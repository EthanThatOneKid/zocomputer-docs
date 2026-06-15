
/openapi.json get /models/catalog
Return the full public model catalog — the picker model list plus the scalar globals (default chat model, featured flags/labels, promo end date, deprecation map). This is the runtime, fleet-fresh equivalent of the baked types/generated/models.ts manifest, built from the same source so the two never drift. Public (no auth); host-specific disabled models are filtered separately at request time. Cached for 5 minutes.
