## [3.6.9] - 2026-02-23

**Upstream Release:** [v3.6.9](https://github.com/traefik/traefik/releases/tag/v3.6.9)

**Bug fixes:**
- **[acme]** Bump github.com/go-acme/lego/v4 to v4.32.0 ([#12702](https://github.com/traefik/traefik/pull/12702) by [ldez](https://github.com/ldez))
- **[middleware]** Fix case sensitivity on x-forwarded headers for Connection ([#12690](https://github.com/traefik/traefik/pull/12690) by [LBF38](https://github.com/LBF38))
- **[middleware, authentication]** Handle empty/missing User-Agent header ([#12545](https://github.com/traefik/traefik/pull/12545) by [a-stangl](https://github.com/a-stangl))
- **[middleware, authentication]** Add maxResponseBodySize configuration to forwardAuth middleware ([#12694](https://github.com/traefik/traefik/pull/12694) by [gndz07](https://github.com/gndz07))
- **[server]** Fix TLS handshake error handling ([#12692](https://github.com/traefik/traefik/pull/12692) by [juliens](https://github.com/juliens))

**Documentation:**
- **[docker]** Update docker in-depth setup guide ([#12682](https://github.com/traefik/traefik/pull/12682) by [mdevino](https://github.com/mdevino))
- **[k8s]** Make labelSelector option casing more consistent ([#12658](https://github.com/traefik/traefik/pull/12658) by [holysoles](https://github.com/holysoles))
- **[k8s/ingress-nginx]** Add temporary note to advertise the incoming NGINX annotations ([#12699](https://github.com/traefik/traefik/pull/12699) by [nmengin](https://github.com/nmengin))
- Increased content width in documentation ([#12632](https://github.com/traefik/traefik/pull/12632) by [tobiasge](https://github.com/tobiasge))
- Correct encoded characters allowance in entrypoints.md ([#12679](https://github.com/traefik/traefik/pull/12679) by [Apflkuacha](https://github.com/Apflkuacha))

---


## [3.6.8] - 2026-02-11

**Upstream Release:** [v3.6.8](https://github.com/traefik/traefik/releases/tag/v3.6.8)

**Bug fixes:**
- **[acme]** Remove invalid private key in log ([#12574](https://github.com/traefik/traefik/pull/12574) by [juliens](https://github.com/juliens))
- **[acme]** Alter TLS renewal period ([#12479](https://github.com/traefik/traefik/pull/12479) by [LtHummus](https://github.com/LtHummus))
- **[healthcheck]** Reject absolute URL in healthcheck path configuration ([#12653](https://github.com/traefik/traefik/pull/12653) by [rtribotte](https://github.com/rtribotte))
- **[http3]** Bump github.com/quic-go/quic-go to v0.59.0 ([#12553](https://github.com/traefik/traefik/pull/12553) by [jnoordsij](https://github.com/jnoordsij))
- **[metrics,tracing,accesslogs]** Fix ObservabilityConfig SetDefaults  ([#12636](https://github.com/traefik/traefik/pull/12636) by [mmatur](https://github.com/mmatur))
- **[server]** Remove conn deadline after STARTTLS negociation ([#12639](https://github.com/traefik/traefik/pull/12639) by [rtribotte](https://github.com/rtribotte))
- **[tls]** Fix verifyServerCertMatchesURI function behavior ([#12575](https://github.com/traefik/traefik/pull/12575) by [kevinpollet](https://github.com/kevinpollet))
- **[tracing,otel]** Use ParentBased sampler to respect parent span sampling decision ([#12403](https://github.com/traefik/traefik/pull/12403) by [xe-leon](https://github.com/xe-leon))
- **[webui]** Use url.Parse to validate X-Forwarded-Prefix value ([#12643](https://github.com/traefik/traefik/pull/12643) by [kevinpollet](https://github.com/kevinpollet))
- **[healthcheck]** Validate healthcheck path configuration (#12642 by @rtribotte)
- **[tls, server]** Cap TLS record length to RFC 8446 limit in ClientHello peeking (#12638 by @mmatur)
- **[service]** Avoid recursion with services ([#12591](https://github.com/traefik/traefik/pull/12591) by [juliens](https://github.com/juliens))
- **[webui]** Bump dependencies of documentation and webui ([#12581](https://github.com/traefik/traefik/pull/12581) by [gndz07](https://github.com/gndz07))

**Documentation:**
- **[k8s]** Fix kubernetes.md with correct http redirections ([#12603](https://github.com/traefik/traefik/pull/12603) by [MartenM](https://github.com/MartenM))
- **[middleware,k8s/crd]** Fix the errors middleware&#39;s document for Kubernetes CRD ([#12600](https://github.com/traefik/traefik/pull/12600) by [yuito-it](https://github.com/yuito-it))
- **[tls]** Clarify SNI selection ([#12482](https://github.com/traefik/traefik/pull/12482) by [AnuragEkkati](https://github.com/AnuragEkkati))
- Fix typo on JWT documentation ([#12616](https://github.com/traefik/traefik/pull/12616) by [mdevino](https://github.com/mdevino))
- Add @gndz07 as a current maintainer ([#12594](https://github.com/traefik/traefik/pull/12594) by [emilevauge](https://github.com/emilevauge))
- Remove extraneous dots in migration guide ([#12571](https://github.com/traefik/traefik/pull/12571) by [dathbe](https://github.com/dathbe))
- Document Path matcher placeholder removal in v3 migration guide ([#12570](https://github.com/traefik/traefik/pull/12570) by [sheddy-traefik](https://github.com/sheddy-traefik))
- Improve Service Reference page ([#12541](https://github.com/traefik/traefik/pull/12541) by [sheddy-traefik](https://github.com/sheddy-traefik))
- Document negative priority support for routers ([#12505](https://github.com/traefik/traefik/pull/12505) by [understood-the-assignment](https://github.com/understood-the-assignment))
- Improve the structure of the routing reference pages ([#12429](https://github.com/traefik/traefik/pull/12429) by [sheddy-traefik](https://github.com/sheddy-traefik))
- Clean Up Menu Entries &amp; Update Expose Overview ([#12405](https://github.com/traefik/traefik/pull/12405) by [sheddy-traefik](https://github.com/sheddy-traefik))
- Split Expose User Guides &amp; Add Multi-Layer Routing Section ([#12238](https://github.com/traefik/traefik/pull/12238) by [sheddy-traefik](https://github.com/sheddy-traefik))
- Remove extra dots in migration guide ([#12573](https://github.com/traefik/traefik/pull/12573) by [rtribotte](https://github.com/rtribotte))

**Misc:**
- Merge v2.11 into v3.6 ([#12652](https://github.com/traefik/traefik/pull/12652) by [mmatur](https://github.com/mmatur))
- Merge v2.11 into v3.6 ([#12644](https://github.com/traefik/traefik/pull/12644) by [mmatur](https://github.com/mmatur))
- Merge branch v2.11 into v3.6 ([#12617](https://github.com/traefik/traefik/pull/12617) by [mmatur](https://github.com/mmatur))
- Merge v2.11 into v3.6 ([#12605](https://github.com/traefik/traefik/pull/12605) by [mmatur](https://github.com/mmatur))
- Merge v2.11 into v3.6 ([#12601](https://github.com/traefik/traefik/pull/12601) by [mmatur](https://github.com/mmatur))
- Merge branch v2.11 into v3.6 ([#12556](https://github.com/traefik/traefik/pull/12556) by [mmatur](https://github.com/mmatur))

---


## [3.6.7] - 2026-01-14

**Upstream Release:** [v3.6.7](https://github.com/traefik/traefik/releases/tag/v3.6.7)

**Breaking Change:** Please read the [migration guide](https://doc.traefik.io/traefik/v3.6/migrate/v3/#v367).

**Bug fixes:**
- **[acme]** Bump github.com/go-acme/lego/v4 to v4.31.0 ([#12529](https://github.com/traefik/traefik/pull/12529) by [ldez](https://github.com/ldez))
- **[acme]** Add missing renew options ([#12467](https://github.com/traefik/traefik/pull/12467) by [ldez](https://github.com/ldez))
- **[acme]** Replace hardcoded references to LetsEncrypt in log messages ([#12464](https://github.com/traefik/traefik/pull/12464) by [schildbach](https://github.com/schildbach))
- **[k8s/ingress-nginx]** Fix use-regex nginx annotation ([#12531](https://github.com/traefik/traefik/pull/12531) by [LBF38](https://github.com/LBF38))
- **[k8s/ingress-nginx]** Prevent Ingress Nginx provider http router to attach to an entrypoint with TLS ([#12528](https://github.com/traefik/traefik/pull/12528) by [rtribotte](https://github.com/rtribotte))
- **[k8s/ingress]** Fix panic for empty defaultBackend and defaultBackend without resources ([#12509](https://github.com/traefik/traefik/pull/12509) by [gndz07](https://github.com/gndz07))
- **[k8s]** Fix condition used for serving and fenced endpoints ([#12521](https://github.com/traefik/traefik/pull/12521) by [LBF38](https://github.com/LBF38))
- **[webui]** Validate X-Forwarded-Prefix value for dashboard redirect ([#12514](https://github.com/traefik/traefik/pull/12514) by [LBF38](https://github.com/LBF38))
- **[acme]** Add timeout to ACME-TLS/1 challenge handshake ([#12516](https://github.com/traefik/traefik/pull/12516) by [LBF38](https://github.com/LBF38))
- **[server]** Make encoded character options opt-in ([#12540](https://github.com/traefik/traefik/pull/12540) by [gndz07](https://github.com/gndz07))

**Documentation:**
- **[docker/swarm]** Update swarm.md traefik version ([#12508](https://github.com/traefik/traefik/pull/12508) by [DBouraoui](https://github.com/DBouraoui))
- **[k8s/ingress-nginx]** Fix ingress-nginx annotations documentation ([#12510](https://github.com/traefik/traefik/pull/12510) by [nmengin](https://github.com/nmengin))
- **[k8s]** Fix Kubernetes reference yml file ([#12406](https://github.com/traefik/traefik/pull/12406) by [mmatur](https://github.com/mmatur))
- Fix code copy button positioning ([#12520](https://github.com/traefik/traefik/pull/12520) by [AnuragEkkati](https://github.com/AnuragEkkati))
- Fix typo in kubernetes.md ([#12515](https://github.com/traefik/traefik/pull/12515) by [EdwardSalkeld](https://github.com/EdwardSalkeld))
- Bring back security section on API &amp; Dashboard documentation page ([#12507](https://github.com/traefik/traefik/pull/12507) by [gndz07](https://github.com/gndz07))
- Fix link description in Traefik Proxy documentation ([#12488](https://github.com/traefik/traefik/pull/12488) by [schaerfo](https://github.com/schaerfo))
- Add product comparison matrix and features page ([#12037](https://github.com/traefik/traefik/pull/12037) by [sheddy-traefik](https://github.com/sheddy-traefik))

**Misc:**
- Merge branch v2.11 into v3.6 ([#12552](https://github.com/traefik/traefik/pull/12552) by [rtribotte](https://github.com/rtribotte))
- Merge branch v2.11 into v3.6 ([#12533](https://github.com/traefik/traefik/pull/12533) by [mmatur](https://github.com/mmatur))
- Merge branch v2.11 into v3.6 ([#12497](https://github.com/traefik/traefik/pull/12497) by [mmatur](https://github.com/mmatur))

---


## [3.6.6] - 2025-12-29

**Upstream Release:** [v3.6.6](https://github.com/traefik/traefik/releases/tag/v3.6.6)

**Bug fixes:**
- **[acme]** Bump github.com/go-acme/lego/v4 to v4.30.1 ([#12432](https://github.com/traefik/traefik/pull/12432) by [ldez](https://github.com/ldez))
- **[http3]** Bump github.com/quic-go/quic-go to v0.58.0 ([#12448](https://github.com/traefik/traefik/pull/12448) by [GreyXor](https://github.com/GreyXor))
- **[redis]** Fix mutually exclusive verification for Redis ([#12442](https://github.com/traefik/traefik/pull/12442) by [juliens](https://github.com/juliens))
- **[server]** Fix deny encoded characters ([#12454](https://github.com/traefik/traefik/pull/12454) by [rtribotte](https://github.com/rtribotte))

**Documentation:**
- **[k8s/ingress,k8s]** Fix Kubernetes Ingress provider documentation ([#12443](https://github.com/traefik/traefik/pull/12443) by [nmengin](https://github.com/nmengin))
- **[k8s/ingress-nginx]** Add RBAC documentation for Ingress NGINX provider ([#12445](https://github.com/traefik/traefik/pull/12445) by [nmn3m](https://github.com/nmn3m))
- **[k8s]** Improve the K8S multi-tenancy security note ([#12444](https://github.com/traefik/traefik/pull/12444) by [nmengin](https://github.com/nmengin))
- Restore documentation on http.maxHeaderBytes ([#12440](https://github.com/traefik/traefik/pull/12440) by [mloiseleur](https://github.com/mloiseleur))
- Fix Menu Item Naming ([#12431](https://github.com/traefik/traefik/pull/12431) by [sheddy-traefik](https://github.com/sheddy-traefik))

**Misc:**
- Merge branch v2.11 into v3.6 ([#12475](https://github.com/traefik/traefik/pull/12475) by [mmatur](https://github.com/mmatur))
- Merge branch v2.11 into v3.6 ([#12438](https://github.com/traefik/traefik/pull/12438) by [kevinpollet](https://github.com/kevinpollet))

---


## [3.6.5] - 2025-12-16

**Upstream Release:** [v3.6.5](https://github.com/traefik/traefik/releases/tag/v3.6.5)

**Bug fixes:**
- **[k8s/ingress-nginx]** Fix NGINX sslredirect annotation support ([#12387](https://github.com/traefik/traefik/pull/12387) by [rtribotte](https://github.com/rtribotte))
- **[server]** Print access logs for rejected requests and warn about new behavior ([#12424](https://github.com/traefik/traefik/pull/12424) by [kevinpollet](https://github.com/kevinpollet))

**Documentation:**
- **[k8s/ingress-nginx]** Add auth-signin to unsupported nginx annotations list ([#12370](https://github.com/traefik/traefik/pull/12370) by [fibsifan](https://github.com/fibsifan))
- Add a Breaking change note to the changelog ([#12398](https://github.com/traefik/traefik/pull/12398) by [nmengin](https://github.com/nmengin))
- Fix encodedCharacters entryPoint option documentation ([#12385](https://github.com/traefik/traefik/pull/12385) by [rtribotte](https://github.com/rtribotte))

---


## [3.6.5] - 2025-12-16

**Upstream Release:** [v3.6.5](https://github.com/traefik/traefik/releases/tag/v3.6.5)

**Bug fixes:**
- **[k8s/ingress-nginx]** Fix NGINX sslredirect annotation support ([#12387](https://github.com/traefik/traefik/pull/12387) by [rtribotte](https://github.com/rtribotte))
- **[server]** Print access logs for rejected requests and warn about new behavior ([#12424](https://github.com/traefik/traefik/pull/12424) by [kevinpollet](https://github.com/kevinpollet))

**Documentation:**
- **[k8s/ingress-nginx]** Add auth-signin to unsupported nginx annotations list ([#12370](https://github.com/traefik/traefik/pull/12370) by [fibsifan](https://github.com/fibsifan))
- Add a Breaking change note to the changelog ([#12398](https://github.com/traefik/traefik/pull/12398) by [nmengin](https://github.com/nmengin))
- Fix encodedCharacters entryPoint option documentation ([#12385](https://github.com/traefik/traefik/pull/12385) by [rtribotte](https://github.com/rtribotte))

---


