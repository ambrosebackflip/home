from invoke import run, task
from os.path import join
import os
import string

test_aws_access_key = "AKIAIS56AGIHXNQD2U5A"
test_aws_secret_key = "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"
test_aws_region = "us-west-1"

def _run(command):
    print(command)
    run(command, warn=False)

@task
def build():
    _run("go install backflip/server/httpserver")
    _run("go install backflip/server/cronserver")

@task
def test(path="backflip/...", module="beast", verbose=False, race=False):
    args = ["go", "test"]
    if verbose:
        args.append("-v")
    if race:
        args.append("-race")
    # args.append("-p=1")
    args.append(path)
    args.append("-beast.module={}".format(module))
    args.append("-beast.awsaccesskeyid={}".format(test_aws_access_key))
    args.append("-beast.awssecretkey={}".format(test_aws_secret_key))
    args.append("-beast.awsregion={}".format(test_aws_region))
    args.append("-beast.dynamourl=http://192.168.59.103:8000")
    args.append("-beast.dynamotable=testtable")
    args.append("-beast.googleapiurl=http://192.168.59.103:8880/service")
    args.append("-beast.redisaddress=192.168.59.103:6379")
    args.append("-beast.elasticsearchaddress=http://192.168.59.103:9200")
    if verbose:
        args.append("-gocheck.vv")
    _run(string.join(args, " "))

@task
def clean():
    _run("rm -fr ./bin")
    _run("rm -fr ./pkg")

@task
def env(dynamo=False, redis=False, googleapi=False, elasticsearch=False, teardown=False, all=False):
    cmds = ["stop", "remove"]
    if not teardown:
        cmds.append("run")

    tools = []
    if dynamo or all:
        tools.append("bin/dynamodb_local")
    if redis or all:
        tools.append("bin/redis_local")
    if googleapi or all:
        tools.append("bin/googleapi_local")
    if elasticsearch or all:
        tools.append("bin/elasticsearch_local")

    for tool in tools:
        for cmd in cmds:
            _run("{} {}".format(tool, cmd))

@task
def thrift():
    _run("bin/generate_thrift")
