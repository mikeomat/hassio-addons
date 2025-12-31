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


