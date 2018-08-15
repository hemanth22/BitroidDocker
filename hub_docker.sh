#!/bin/bash
curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/bitroid/bitroiddocker/trigger/d41af848-1632-491c-b3c9-364c1639dceb/
