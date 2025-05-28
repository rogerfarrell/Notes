There are two primary issues with duplicating code and documentation:

1. It is difficult to keep many duplicates updated
2. Finding what you need becomes much more difficult

Perhaps, the solution is to avoid duplicates within the same scope. In a
declarative paradigm, structure is emergent. You end up with tons of
micro-domains with local scope. So long as these have no dependencies,
the duplication is actually useful. The module becomes independent and
self-contained. The first issue is addressed by the local scope. There
are no duplicates within a scope. Thus, maintenance is easy. The second
issue is addressed by the emergent structure. Finding what you need is
simply a matter of tracing the structure to the correct micro-domain.
