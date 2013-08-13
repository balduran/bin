SHELL := /bin/bash
NODE_PATH = $(shell which node)
PATH := $(NODE_PATH):$(shell echo $$PATH)

COMPONENT_BIN = node_modules/component/bin/component

all: build

build: components
	$(COMPONENT_BIN) build --dev

components: $(COMPONENT_BIN) component.json
	$(COMPONENT_BIN) install --dev

$(COMPONENT_BIN):
	npm install component@0.16.0

clean:
	rm -rf build components

.PHONY: all clean
