REBAR := ./rebar

.PHONY: all doc clean test dialyzer

all: deps compile doc

deps:
	$(REBAR) get-deps
  
compile:
	$(REBAR) compile

doc:
	$(REBAR) doc

test:
	$(REBAR) eunit

dialyzer:
	$(REBAR) analyze

release: all dialyzer test
	$(REBAR) release

clean:
	$(REBAR) clean
