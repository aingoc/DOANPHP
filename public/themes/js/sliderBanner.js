(function(g, h, c, j, d, l, k) { /*! Jssor */
    new(function() {});
    var f = {
            Fd: function(a) {
                return -c.cos(a * c.PI) / 2 + .5
            },
            re: function(a) {
                return a
            },
            Id: function(a) {
                return -a * (a - 2)
            },
            qe: function(a) {
                return (a *= 2) < 1 ? 1 / 2 * a * a : -1 / 2 * (--a * (a - 2) - 1)
            },
            De: function(a) {
                return -1 / 2 * (c.cos(c.PI * a) - 1)
            },
            je: function(a) {
                return a == 0 || a == 1 ? a : (a *= 2) < 1 ? 1 / 2 * c.pow(2, 10 * (a - 1)) : 1 / 2 * (-c.pow(2, -10 * --a) + 2)
            },
            se: function(a) {
                return 1 - c.cos(a * c.PI * 2)
            },
            te: function(a) {
                return c.sin(a * c.PI * 2)
            },
            Fe: function(a) {
                return 1 - ((a *= 2) < 1 ? (a = 1 - a) * a * a : (a -= 1) * a * a)
            },
            ve: function(a) {
                return (a *= 2) < 1 ? a * a * a : (a = 2 - a) * a * a
            }
        },
        e = {
            qb: f.Id,
            sd: f.qe,
            he: f.De,
            Wd: f.je,
            Rb: f.se,
            fe: f.te,
            Yd: f.Fe,
            Yb: f.ve
        };
    var b = new function() {
        var e = this,
            Bb = /\S+/g,
            G = 1,
            db = 2,
            hb = 3,
            gb = 4,
            lb = 5,
            H, r = 0,
            i = 0,
            s = 0,
            W = 0,
            z = 0,
            J = navigator,
            pb = J.appName,
            o = J.userAgent,
            p = parseFloat;

        function zb() {
            if (!H) {
                H = {
                    af: "ontouchstart" in g || "createTouch" in h
                };
                var a;
                if (J.pointerEnabled || (a = J.msPointerEnabled)) H.md = a ? "msTouchAction" : "touchAction"
            }
            return H
        }

        function v(j) {
            if (!r) {
                r = -1;
                if (pb == "Microsoft Internet Explorer" && !!g.attachEvent && !!g.ActiveXObject) {
                    var e = o.indexOf("MSIE");
                    r = G;
                    s = p(o.substring(e + 5, o.indexOf(";", e))); /*@cc_on W=@_jscript_version@*/ ;
                    i = h.documentMode || s
                } else if (pb == "Netscape" && !!g.addEventListener) {
                    var d = o.indexOf("Firefox"),
                        b = o.indexOf("Safari"),
                        f = o.indexOf("Chrome"),
                        c = o.indexOf("AppleWebKit");
                    if (d >= 0) {
                        r = db;
                        i = p(o.substring(d + 8))
                    } else if (b >= 0) {
                        var k = o.substring(0, b).lastIndexOf("/");
                        r = f >= 0 ? gb : hb;
                        i = p(o.substring(k + 1, b))
                    } else {
                        var a = /Trident\/.*rv:([0-9]{1,}[\.0-9]{0,})/i.exec(o);
                        if (a) {
                            r = G;
                            i = s = p(a[1])
                        }
                    }
                    if (c >= 0) z = p(o.substring(c + 12))
                } else {
                    var a = /(opera)(?:.*version|)[ \/]([\w.]+)/i.exec(o);
                    if (a) {
                        r = lb;
                        i = p(a[2])
                    }
                }
            }
            return j == r
        }

        function q() {
            return v(G)
        }

        function R() {
            return q() && (i < 6 || h.compatMode == "BackCompat")
        }

        function fb() {
            return v(hb)
        }

        function kb() {
            return v(lb)
        }

        function wb() {
            return fb() && z > 534 && z < 535
        }

        function K() {
            v();
            return z > 537 || i > 42 || r == G && i >= 11
        }

        function P() {
            return q() && i < 9
        }

        function xb(a) {
            var b, c;
            return function(f) {
                if (!b) {
                    b = d;
                    var e = a.substr(0, 1).toUpperCase() + a.substr(1);
                    n([a].concat(["WebKit", "ms", "Moz", "O", "webkit"]), function(g, d) {
                        var b = a;
                        if (d) b = g + e;
                        if (f.style[b] != k) return c = b
                    })
                }
                return c
            }
        }

        function vb(b) {
            var a;
            return function(c) {
                a = a || xb(b)(c) || b;
                return a
            }
        }
        var L = vb("transform");

        function ob(a) {
            return {}.toString.call(a)
        }
        var F;

        function Hb() {
            if (!F) {
                F = {};
                n(["Boolean", "Number", "String", "Function", "Array", "Date", "RegExp", "Object"], function(a) {
                    F["[object " + a + "]"] = a.toLowerCase()
                })
            }
            return F
        }

        function n(b, d) {
            var a, c;
            if (ob(b) == "[object Array]") {
                for (a = 0; a < b.length; a++)
                    if (c = d(b[a], a, b)) return c
            } else
                for (a in b)
                    if (c = d(b[a], a, b)) return c
        }

        function C(a) {
            return a == j ? String(a) : Hb()[ob(a)] || "object"
        }

        function mb(a) {
            for (var b in a) return d
        }

        function A(a) {
            try {
                return C(a) == "object" && !a.nodeType && a != a.window && (!a.constructor || {}.hasOwnProperty.call(a.constructor.prototype, "isPrototypeOf"))
            } catch (b) {}
        }

        function u(a, b) {
            return {
                x: a,
                y: b
            }
        }

        function sb(b, a) {
            setTimeout(b, a || 0)
        }

        function I(b, d, c) {
            var a = !b || b == "inherit" ? "" : b;
            n(d, function(c) {
                var b = c.exec(a);
                if (b) {
                    var d = a.substr(0, b.index),
                        e = a.substr(b.index + b[0].length + 1, a.length - 1);
                    a = d + e
                }
            });
            a = c + (!a.indexOf(" ") ? "" : " ") + a;
            return a
        }

        function ub(b, a) {
            if (i < 9) b.style.filter = a
        }
        e.ff = zb;
        e.kd = q;
        e.hf = fb;
        e.Cd = kb;
        e.Ve = K;
        e.tb = P;
        xb("transform");
        e.Jd = function() {
            return i
        };
        e.Le = function() {
            v();
            return z
        };
        e.o = sb;

        function Z(a) {
            a.constructor === Z.caller && a.Kd && a.Kd.apply(a, Z.caller.arguments)
        }
        e.Kd = Z;
        e.vb = function(a) {
            if (e.nf(a)) a = h.getElementById(a);
            return a
        };

        function t(a) {
            return a || g.event
        }
        e.Ld = t;
        e.cc = function(b) {
            b = t(b);
            var a = b.target || b.srcElement || h;
            if (a.nodeType == 3) a = e.Od(a);
            return a
        };
        e.hd = function(a) {
            a = t(a);
            return {
                x: a.pageX || a.clientX || 0,
                y: a.pageY || a.clientY || 0
            }
        };

        function D(c, d, a) {
            if (a !== k) c.style[d] = a == k ? "" : a;
            else {
                var b = c.currentStyle || c.style;
                a = b[d];
                if (a == "" && g.getComputedStyle) {
                    b = c.ownerDocument.defaultView.getComputedStyle(c, j);
                    b && (a = b.getPropertyValue(d) || b[d])
                }
                return a
            }
        }

        function bb(b, c, a, d) {
            if (a !== k) {
                if (a == j) a = "";
                else d && (a += "px");
                D(b, c, a)
            } else return p(D(b, c))
        }

        function m(c, a) {
            var d = a ? bb : D,
                b;
            if (a & 4) b = vb(c);
            return function(e, f) {
                return d(e, b ? b(e) : c, f, a & 2)
            }
        }

        function Eb(b) {
            if (q() && s < 9) {
                var a = /opacity=([^)]*)/.exec(b.style.filter || "");
                return a ? p(a[1]) / 100 : 1
            } else return p(b.style.opacity || "1")
        }

        function Gb(b, a, f) {
            if (q() && s < 9) {
                var h = b.style.filter || "",
                    i = new RegExp(/[\s]*alpha\([^\)]*\)/g),
                    e = c.round(100 * a),
                    d = "";
                if (e < 100 || f) d = "alpha(opacity=" + e + ") ";
                var g = I(h, [i], d);
                ub(b, g)
            } else b.style.opacity = a == 1 ? "" : c.round(a * 100) / 100
        }
        var M = {
            L: ["rotate"],
            fb: ["rotateX"],
            ab: ["rotateY"],
            Qb: ["skewX"],
            Lb: ["skewY"]
        };
        if (!K()) M = B(M, {
            r: ["scaleX", 2],
            v: ["scaleY", 2],
            eb: ["translateZ", 1]
        });

        function N(d, a) {
            var c = "";
            if (a) {
                if (q() && i && i < 10) {
                    delete a.fb;
                    delete a.ab;
                    delete a.eb
                }
                b.g(a, function(d, b) {
                    var a = M[b];
                    if (a) {
                        var e = a[1] || 0;
                        if (O[b] != d) c += " " + a[0] + "(" + d + (["deg", "px", ""])[e] + ")"
                    }
                });
                if (K()) {
                    if (a.nb || a.jb || a.eb) c += " translate3d(" + (a.nb || 0) + "px," + (a.jb || 0) + "px," + (a.eb || 0) + "px)";
                    if (a.r == k) a.r = 1;
                    if (a.v == k) a.v = 1;
                    if (a.r != 1 || a.v != 1) c += " scale3d(" + a.r + ", " + a.v + ", 1)"
                }
            }
            d.style[L(d)] = c
        }
        e.Gc = m("transformOrigin", 4);
        e.Bf = m("backfaceVisibility", 4);
        e.Cf = m("transformStyle", 4);
        e.If = m("perspective", 6);
        e.lf = m("perspectiveOrigin", 4);
        e.kf = function(a, b) {
            if (q() && s < 9 || s < 10 && R()) a.style.zoom = b == 1 ? "" : b;
            else {
                var c = L(a),
                    f = "scale(" + b + ")",
                    e = a.style[c],
                    g = new RegExp(/[\s]*scale\(.*?\)/g),
                    d = I(e, [g], f);
                a.style[c] = d
            }
        };
        e.jc = function(b, a) {
            return function(c) {
                c = t(c);
                var f = c.type,
                    d = c.relatedTarget || (f == "mouseout" ? c.toElement : c.fromElement);
                (!d || d !== a && !e.Me(a, d)) && b(c)
            }
        };
        e.f = function(a, d, b, c) {
            a = e.vb(a);
            if (a.addEventListener) {
                d == "mousewheel" && a.addEventListener("DOMMouseScroll", b, c);
                a.addEventListener(d, b, c)
            } else if (a.attachEvent) {
                a.attachEvent("on" + d, b);
                c && a.setCapture && a.setCapture()
            }
        };
        e.T = function(a, c, d, b) {
            a = e.vb(a);
            if (a.removeEventListener) {
                c == "mousewheel" && a.removeEventListener("DOMMouseScroll", d, b);
                a.removeEventListener(c, d, b)
            } else if (a.detachEvent) {
                a.detachEvent("on" + c, d);
                b && a.releaseCapture && a.releaseCapture()
            }
        };
        e.ac = function(a) {
            a = t(a);
            a.preventDefault && a.preventDefault();
            a.cancel = d;
            a.returnValue = l
        };
        e.Te = function(a) {
            a = t(a);
            a.stopPropagation && a.stopPropagation();
            a.cancelBubble = d
        };
        e.O = function(d, c) {
            var a = [].slice.call(arguments, 2),
                b = function() {
                    var b = a.concat([].slice.call(arguments, 0));
                    return c.apply(d, b)
                };
            return b
        };
        e.cf = function(a, b) {
            if (b == k) return a.textContent || a.innerText;
            var c = h.createTextNode(b);
            e.hc(a);
            a.appendChild(c)
        };
        e.Xb = function(d, c) {
            for (var b = [], a = d.firstChild; a; a = a.nextSibling)(c || a.nodeType == 1) && b.push(a);
            return b
        };

        function nb(a, c, e, b) {
            b = b || "u";
            for (a = a ? a.firstChild : j; a; a = a.nextSibling)
                if (a.nodeType == 1) {
                    if (V(a, b) == c) return a;
                    if (!e) {
                        var d = nb(a, c, e, b);
                        if (d) return d
                    }
                }
        }
        e.I = nb;

        function T(a, d, f, b) {
            b = b || "u";
            var c = [];
            for (a = a ? a.firstChild : j; a; a = a.nextSibling)
                if (a.nodeType == 1) {
                    V(a, b) == d && c.push(a);
                    if (!f) {
                        var e = T(a, d, f, b);
                        if (e.length) c = c.concat(e)
                    }
                }
            return c
        }

        function ib(a, c, d) {
            for (a = a ? a.firstChild : j; a; a = a.nextSibling)
                if (a.nodeType == 1) {
                    if (a.tagName == c) return a;
                    if (!d) {
                        var b = ib(a, c, d);
                        if (b) return b
                    }
                }
        }
        e.ef = ib;

        function yb(a, c, e) {
            var b = [];
            for (a = a ? a.firstChild : j; a; a = a.nextSibling)
                if (a.nodeType == 1) {
                    (!c || a.tagName == c) && b.push(a);
                    if (!e) {
                        var d = yb(a, c, e);
                        if (d.length) b = b.concat(d)
                    }
                }
            return b
        }
        e.df = yb;
        e.bf = function(b, a) {
            return b.getElementsByTagName(a)
        };

        function B() {
            var e = arguments,
                d, c, b, a, g = 1 & e[0],
                f = 1 + g;
            d = e[f - 1] || {};
            for (; f < e.length; f++)
                if (c = e[f])
                    for (b in c) {
                        a = c[b];
                        if (a !== k) {
                            a = c[b];
                            var h = d[b];
                            d[b] = g && (A(h) || A(a)) ? B(g, {}, h, a) : a
                        }
                    }
            return d
        }
        e.H = B;

        function ab(f, g) {
            var d = {},
                c, a, b;
            for (c in f) {
                a = f[c];
                b = g[c];
                if (a !== b) {
                    var e;
                    if (A(a) && A(b)) {
                        a = ab(a, b);
                        e = !mb(a)
                    }!e && (d[c] = a)
                }
            }
            return d
        }
        e.Xc = function(a) {
            return C(a) == "function"
        };
        e.nf = function(a) {
            return C(a) == "string"
        };
        e.Yc = function(a) {
            return !isNaN(p(a)) && isFinite(a)
        };
        e.g = n;

        function S(a) {
            return h.createElement(a)
        }
        e.Ub = function() {
            return S("DIV")
        };
        e.Oe = function() {
            return S("SPAN")
        };
        e.ad = function() {};

        function X(b, c, a) {
            if (a == k) return b.getAttribute(c);
            b.setAttribute(c, a)
        }

        function V(a, b) {
            return X(a, b) || X(a, "data-" + b)
        }
        e.C = X;
        e.m = V;

        function x(b, a) {
            if (a == k) return b.className;
            b.className = a
        }
        e.bd = x;

        function rb(b) {
            var a = {};
            n(b, function(b) {
                a[b] = b
            });
            return a
        }

        function tb(b, a) {
            return b.match(a || Bb)
        }

        function Q(b, a) {
            return rb(tb(b || "", a))
        }
        e.Df = tb;

        function cb(b, c) {
            var a = "";
            n(c, function(c) {
                a && (a += b);
                a += c
            });
            return a
        }

        function E(a, c, b) {
            x(a, cb(" ", B(ab(Q(x(a)), Q(c)), Q(b))))
        }
        e.Od = function(a) {
            return a.parentNode
        };
        e.Q = function(a) {
            e.cb(a, "none")
        };
        e.z = function(a, b) {
            e.cb(a, b ? "none" : "")
        };
        e.rf = function(b, a) {
            b.removeAttribute(a)
        };
        e.zf = function() {
            return q() && i < 10
        };
        e.Af = function(d, a) {
            if (a) d.style.clip = "rect(" + c.round(a.c) + "px " + c.round(a.u) + "px " + c.round(a.s) + "px " + c.round(a.e) + "px)";
            else if (a !== k) {
                var g = d.style.cssText,
                    f = [new RegExp(/[\s]*clip: rect\(.*?\)[;]?/i), new RegExp(/[\s]*cliptop: .*?[;]?/i), new RegExp(/[\s]*clipright: .*?[;]?/i), new RegExp(/[\s]*clipbottom: .*?[;]?/i), new RegExp(/[\s]*clipleft: .*?[;]?/i)],
                    e = I(g, f, "");
                b.Kb(d, e)
            }
        };
        e.Z = function() {
            return +new Date
        };
        e.M = function(b, a) {
            b.appendChild(a)
        };
        e.Mb = function(b, a, c) {
            (c || a.parentNode).insertBefore(b, a)
        };
        e.Nb = function(b, a) {
            a = a || b.parentNode;
            a && a.removeChild(b)
        };
        e.de = function(a, b) {
            n(a, function(a) {
                e.Nb(a, b)
            })
        };
        e.hc = function(a) {
            e.de(e.Xb(a, d), a)
        };
        e.ce = function(a, b) {
            var c = e.Od(a);
            b & 1 && e.P(a, (e.n(c) - e.n(a)) / 2);
            b & 2 && e.U(a, (e.p(c) - e.p(a)) / 2)
        };
        e.Xd = function(b, a) {
            return parseInt(b, a || 10)
        };
        e.Vd = p;
        e.Me = function(b, a) {
            var c = h.body;
            while (a && b !== a && c !== a) try {
                a = a.parentNode
            } catch (d) {
                return l
            }
            return b === a
        };

        function Y(d, c, b) {
            var a = d.cloneNode(!c);
            !b && e.rf(a, "id");
            return a
        }
        e.V = Y;
        e.wb = function(f, g) {
            var a = new Image;

            function b(f, d) {
                e.T(a, "load", b);
                e.T(a, "abort", c);
                e.T(a, "error", c);
                g && g(a, d)
            }

            function c(a) {
                b(a, d)
            }
            if (kb() && i < 11.6 || !f) b(!f);
            else {
                e.f(a, "load", b);
                e.f(a, "abort", c);
                e.f(a, "error", c);
                a.src = f
            }
        };
        e.Pd = function(d, a, f) {
            var c = d.length + 1;

            function b(b) {
                c--;
                if (a && b && b.src == a.src) a = b;
                !c && f && f(a)
            }
            n(d, function(a) {
                e.wb(a.src, b)
            });
            b()
        };
        e.Sd = function(a, g, i, h) {
            if (h) a = Y(a);
            var c = T(a, g);
            if (!c.length) c = b.bf(a, g);
            for (var f = c.length - 1; f > -1; f--) {
                var d = c[f],
                    e = Y(i);
                x(e, x(d));
                b.Kb(e, d.style.cssText);
                b.Mb(e, d);
                b.Nb(d)
            }
            return a
        };

        function Ib(a) {
            var l = this,
                p = "",
                r = ["av", "pv", "ds", "dn"],
                f = [],
                q, j = 0,
                g = 0,
                d = 0;

            function i() {
                E(a, q, f[d || j || g & 2 || g]);
                b.W(a, "pointer-events", d ? "none" : "")
            }

            function c() {
                j = 0;
                i();
                e.T(h, "mouseup", c);
                e.T(h, "touchend", c);
                e.T(h, "touchcancel", c)
            }

            function o(a) {
                if (d) e.ac(a);
                else {
                    j = 4;
                    i();
                    e.f(h, "mouseup", c);
                    e.f(h, "touchend", c);
                    e.f(h, "touchcancel", c)
                }
            }
            l.Rd = function(a) {
                if (a === k) return g;
                g = a & 2 || a & 1;
                i()
            };
            l.fd = function(a) {
                if (a === k) return !d;
                d = a ? 0 : 3;
                i()
            };
            l.bb = a = e.vb(a);
            var m = b.Df(x(a));
            if (m) p = m.shift();
            n(r, function(a) {
                f.push(p + a)
            });
            q = cb(" ", f);
            f.unshift("");
            e.f(a, "mousedown", o);
            e.f(a, "touchstart", o)
        }
        e.Ec = function(a) {
            return new Ib(a)
        };
        e.W = D;
        e.xb = m("overflow");
        e.U = m("top", 2);
        e.P = m("left", 2);
        e.n = m("width", 2);
        e.p = m("height", 2);
        e.Td = m("marginLeft", 2);
        e.Ge = m("marginTop", 2);
        e.A = m("position");
        e.cb = m("display");
        e.D = m("zIndex", 1);
        e.Jb = function(b, a, c) {
            if (a != k) Gb(b, a, c);
            else return Eb(b)
        };
        e.Kb = function(a, b) {
            if (b != k) a.style.cssText = b;
            else return a.style.cssText
        };
        var U = {
            F: e.Jb,
            c: e.U,
            e: e.P,
            X: e.n,
            Y: e.p,
            Bb: e.A,
            Qf: e.cb,
            N: e.D
        };

        function w(g, l) {
            var f = P(),
                b = K(),
                d = wb(),
                h = L(g);

            function i(b, d, a) {
                var e = b.lb(u(-d / 2, -a / 2)),
                    f = b.lb(u(d / 2, -a / 2)),
                    g = b.lb(u(d / 2, a / 2)),
                    h = b.lb(u(-d / 2, a / 2));
                b.lb(u(300, 300));
                return u(c.min(e.x, f.x, g.x, h.x) + d / 2, c.min(e.y, f.y, g.y, h.y) + a / 2)
            }

            function a(d, a) {
                a = a || {};
                var g = a.eb || 0,
                    l = (a.fb || 0) % 360,
                    m = (a.ab || 0) % 360,
                    o = (a.L || 0) % 360,
                    p = a.Rf;
                if (f) {
                    g = 0;
                    l = 0;
                    m = 0;
                    p = 0
                }
                var c = new Db(a.nb, a.jb, g);
                c.fb(l);
                c.ab(m);
                c.Ce(o);
                c.Be(a.Qb, a.Lb);
                c.sc(a.r, a.v, p);
                if (b) {
                    c.mb(a.Eb, a.Fb);
                    d.style[h] = c.Ae()
                } else if (!W || W < 9) {
                    var j = "";
                    if (o || a.r != k && a.r != 1 || a.v != k && a.v != 1) {
                        var n = i(c, a.ob, a.pb);
                        e.Ge(d, n.y);
                        e.Td(d, n.x);
                        j = c.ze()
                    }
                    var r = d.style.filter,
                        s = new RegExp(/[\s]*progid:DXImageTransform\.Microsoft\.Matrix\([^\)]*\)/g),
                        q = I(r, [s], j);
                    ub(d, q)
                }
            }
            w = function(f, c) {
                c = c || {};
                var h = c.Eb,
                    i = c.Fb,
                    g;
                n(U, function(a, b) {
                    g = c[b];
                    g !== k && a(f, g)
                });
                e.Af(f, c.a);
                if (!b) {
                    h != k && e.P(f, c.Wc + h);
                    i != k && e.U(f, c.Vc + i)
                }
                if (c.xe)
                    if (d) sb(e.O(j, N, f, c));
                    else a(f, c)
            };
            e.Ib = N;
            if (d) e.Ib = w;
            if (f) e.Ib = a;
            else if (!b) a = N;
            e.E = w;
            w(g, l)
        }
        e.Ib = w;
        e.E = w;

        function Db(i, l, p) {
            var d = this,
                b = [1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, i || 0, l || 0, p || 0, 1],
                h = c.sin,
                g = c.cos,
                m = c.tan;

            function f(a) {
                return a * c.PI / 180
            }

            function o(a, b) {
                return {
                    x: a,
                    y: b
                }
            }

            function n(c, e, l, m, o, r, t, u, w, z, A, C, E, b, f, k, a, g, i, n, p, q, s, v, x, y, B, D, F, d, h, j) {
                return [c * a + e * p + l * x + m * F, c * g + e * q + l * y + m * d, c * i + e * s + l * B + m * h, c * n + e * v + l * D + m * j, o * a + r * p + t * x + u * F, o * g + r * q + t * y + u * d, o * i + r * s + t * B + u * h, o * n + r * v + t * D + u * j, w * a + z * p + A * x + C * F, w * g + z * q + A * y + C * d, w * i + z * s + A * B + C * h, w * n + z * v + A * D + C * j, E * a + b * p + f * x + k * F, E * g + b * q + f * y + k * d, E * i + b * s + f * B + k * h, E * n + b * v + f * D + k * j]
            }

            function e(c, a) {
                return n.apply(j, (a || b).concat(c))
            }
            d.sc = function(a, c, d) {
                if (a == k) a = 1;
                if (c == k) c = 1;
                if (d == k) d = 1;
                if (a != 1 || c != 1 || d != 1) b = e([a, 0, 0, 0, 0, c, 0, 0, 0, 0, d, 0, 0, 0, 0, 1])
            };
            d.mb = function(a, c, d) {
                b[12] += a || 0;
                b[13] += c || 0;
                b[14] += d || 0
            };
            d.fb = function(c) {
                if (c) {
                    a = f(c);
                    var d = g(a),
                        i = h(a);
                    b = e([1, 0, 0, 0, 0, d, i, 0, 0, -i, d, 0, 0, 0, 0, 1])
                }
            };
            d.ab = function(c) {
                if (c) {
                    a = f(c);
                    var d = g(a),
                        i = h(a);
                    b = e([d, 0, -i, 0, 0, 1, 0, 0, i, 0, d, 0, 0, 0, 0, 1])
                }
            };
            d.Ce = function(c) {
                if (c) {
                    a = f(c);
                    var d = g(a),
                        i = h(a);
                    b = e([d, i, 0, 0, -i, d, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1])
                }
            };
            d.Be = function(a, c) {
                if (a || c) {
                    i = f(a);
                    l = f(c);
                    b = e([1, m(l), 0, 0, m(i), 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1])
                }
            };
            d.lb = function(c) {
                var a = e(b, [1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, c.x, c.y, 0, 1]);
                return o(a[12], a[13])
            };
            d.Ae = function() {
                return "matrix3d(" + b.join(",") + ")"
            };
            d.ze = function() {
                return "progid:DXImageTransform.Microsoft.Matrix(M11=" + b[0] + ", M12=" + b[4] + ", M21=" + b[1] + ", M22=" + b[5] + ", SizingMethod='auto expand')"
            }
        }
        new function() {
            var a = this;

            function b(d, g) {
                for (var j = d[0].length, i = d.length, h = g[0].length, f = [], c = 0; c < i; c++)
                    for (var k = f[c] = [], b = 0; b < h; b++) {
                        for (var e = 0, a = 0; a < j; a++) e += d[c][a] * g[a][b];
                        k[b] = e
                    }
                return f
            }
            a.r = function(b, c) {
                return a.Uc(b, c, 0)
            };
            a.v = function(b, c) {
                return a.Uc(b, 0, c)
            };
            a.Uc = function(a, c, d) {
                return b(a, [
                    [c, 0],
                    [0, d]
                ])
            };
            a.lb = function(d, c) {
                var a = b(d, [
                    [c.x],
                    [c.y]
                ]);
                return u(a[0][0], a[1][0])
            }
        };
        var O = {
            Wc: 0,
            Vc: 0,
            Eb: 0,
            Fb: 0,
            B: 1,
            r: 1,
            v: 1,
            L: 0,
            fb: 0,
            ab: 0,
            nb: 0,
            jb: 0,
            eb: 0,
            Qb: 0,
            Lb: 0
        };
        e.Tc = function(a) {
            var c = a || {};
            if (a)
                if (b.Xc(a)) c = {
                    nc: c
                };
                else if (b.Xc(a.a)) c.a = {
                    nc: a.a
                };
            return c
        };
        e.Qc = function(l, m, w, n, y, z, o) {
            var a = m;
            if (l) {
                a = {};
                for (var g in m) {
                    var A = z[g] || 1,
                        v = y[g] || [0, 1],
                        e = (w - v[0]) / v[1];
                    e = c.min(c.max(e, 0), 1);
                    e = e * A;
                    var u = c.floor(e);
                    if (e != u) e -= u;
                    var h = n.nc || f.Fd,
                        i, B = l[g],
                        q = m[g];
                    if (b.Yc(q)) {
                        h = n[g] || h;
                        var x = h(e);
                        i = B + q * x
                    } else {
                        i = b.H({
                            bc: {}
                        }, l[g]);
                        b.g(q.bc || q, function(d, a) {
                            if (n.a) h = n.a[a] || n.a.nc || h;
                            var c = h(e),
                                b = d * c;
                            i.bc[a] = b;
                            i[a] += b
                        })
                    }
                    a[g] = i
                }
                var t = b.g(m, function(b, a) {
                    return O[a] != k
                });
                t && b.g(O, function(c, b) {
                    if (a[b] == k && l[b] !== k) a[b] = l[b]
                });
                if (t) {
                    if (a.B) a.r = a.v = a.B;
                    a.ob = o.ob;
                    a.pb = o.pb;
                    a.xe = d
                }
            }
            if (m.a && o.mb) {
                var p = a.a.bc,
                    s = (p.c || 0) + (p.s || 0),
                    r = (p.e || 0) + (p.u || 0);
                a.e = (a.e || 0) + r;
                a.c = (a.c || 0) + s;
                a.a.e -= r;
                a.a.u -= r;
                a.a.c -= s;
                a.a.s -= s
            }
            if (a.a && b.zf() && !a.a.c && !a.a.e && a.a.u == o.ob && a.a.s == o.pb) a.a = j;
            return a
        }
    };

    function o() {
        var a = this,
            d = [];

        function i(a, b) {
            d.push({
                qc: a,
                rc: b
            })
        }

        function h(a, c) {
            b.g(d, function(b, e) {
                b.qc == a && b.rc === c && d.splice(e, 1)
            })
        }
        a.yb = a.addEventListener = i;
        a.removeEventListener = h;
        a.j = function(a) {
            var c = [].slice.call(arguments, 1);
            b.g(d, function(b) {
                b.qc == a && b.rc.apply(g, c)
            })
        }
    }
    var m = function(z, C, i, J, M, L) {
        z = z || 0;
        var a = this,
            q, n, o, u, A = 0,
            G, H, F, B, y = 0,
            h = 0,
            m = 0,
            D, k, f, e, p, w = [],
            x;

        function O(a) {
            f += a;
            e += a;
            k += a;
            h += a;
            m += a;
            y += a
        }

        function t(o) {
            var g = o;
            if (p && (g >= e || g <= f)) g = ((g - f) % p + p) % p + f;
            if (!D || u || h != g) {
                var j = c.min(g, e);
                j = c.max(j, f);
                if (!D || u || j != m) {
                    if (L) {
                        var l = (j - k) / (C || 1);
                        if (i.zc) l = 1 - l;
                        var n = b.Qc(M, L, l, G, F, H, i);
                        if (x) b.g(n, function(b, a) {
                            x[a] && x[a](J, b)
                        });
                        else b.E(J, n)
                    }
                    a.Ac(m - k, j - k);
                    m = j;
                    b.g(w, function(b, c) {
                        var a = o < h ? w[w.length - c - 1] : b;
                        a.hb(m - y)
                    });
                    var r = h,
                        q = m;
                    h = g;
                    D = d;
                    a.Zb(r, q)
                }
            }
        }

        function E(a, b, d) {
            b && a.Pb(e);
            if (!d) {
                f = c.min(f, a.ed() + y);
                e = c.max(e, a.kc() + y)
            }
            w.push(a)
        }
        var r = g.requestAnimationFrame || g.webkitRequestAnimationFrame || g.mozRequestAnimationFrame || g.msRequestAnimationFrame;
        if (b.hf() && b.Jd() < 7) r = j;
        r = r || function(a) {
                b.o(a, i.ib)
            };

        function I() {
            if (q) {
                var d = b.Z(),
                    e = c.min(d - A, i.Ic),
                    a = h + e * o;
                A = d;
                if (a * o >= n * o) a = n;
                t(a);
                if (!u && a * o >= n * o) K(B);
                else r(I)
            }
        }

        function s(g, i, j) {
            if (!q) {
                q = d;
                u = j;
                B = i;
                g = c.max(g, f);
                g = c.min(g, e);
                n = g;
                o = n < h ? -1 : 1;
                a.Oc();
                A = b.Z();
                r(I)
            }
        }

        function K(b) {
            if (q) {
                u = q = B = l;
                a.Hc();
                b && b()
            }
        }
        a.Jc = function(a, b, c) {
            s(a ? h + a : e, b, c)
        };
        a.Kc = s;
        a.rb = K;
        a.ue = function(a) {
            s(a)
        };
        a.db = function() {
            return h
        };
        a.Lc = function() {
            return n
        };
        a.ub = function() {
            return m
        };
        a.hb = t;
        a.mb = function(a) {
            t(h + a)
        };
        a.Mc = function() {
            return q
        };
        a.Ud = function(a) {
            p = a
        };
        a.Pb = O;
        a.Nc = function(a, b) {
            E(a, 0, b)
        };
        a.Cc = function(a) {
            E(a, 1)
        };
        a.ed = function() {
            return f
        };
        a.kc = function() {
            return e
        };
        a.Zb = a.Oc = a.Hc = a.Ac = b.ad;
        a.fc = b.Z();
        i = b.H({
            ib: 16,
            Ic: 50
        }, i);
        p = i.gd;
        x = i.ee;
        f = k = z;
        e = z + C;
        H = i.J || {};
        F = i.gb || {};
        G = b.Tc(i.l)
    };
    var n = new function() {
            var h = this,
                t = 1,
                q = 2,
                r = 4,
                s = 8,
                w = 256,
                x = 512,
                v = 1024,
                u = 2048,
                j = u + t,
                i = u + q,
                o = x + t,
                m = x + q,
                n = w + r,
                k = w + s,
                l = v + r,
                p = v + s;

            function y(a) {
                return (a & q) == q
            }

            function z(a) {
                return (a & r) == r
            }

            function g(b, a, c) {
                c.push(a);
                b[a] = b[a] || [];
                b[a].push(c)
            }
            h.vc = function(f) {
                for (var d = f.i, e = f.k, s = f.R, t = f.Rc, r = [], a = 0, b = 0, p = d - 1, q = e - 1, h = t - 1, c, b = 0; b < e; b++)
                    for (a = 0; a < d; a++) {
                        switch (s) {
                            case j:
                                c = h - (a * e + (q - b));
                                break;
                            case l:
                                c = h - (b * d + (p - a));
                                break;
                            case o:
                                c = h - (a * e + b);
                            case n:
                                c = h - (b * d + a);
                                break;
                            case i:
                                c = a * e + b;
                                break;
                            case k:
                                c = b * d + (p - a);
                                break;
                            case m:
                                c = a * e + (q - b);
                                break;
                            default:
                                c = b * d + a
                        }
                        g(r, c, [b, a])
                    }
                return r
            };
            h.zb = function(q) {
                var u = q.i,
                    v = q.k,
                    e = q.R,
                    t = q.Rc,
                    r = [],
                    s = 0,
                    c = 0,
                    d = 0,
                    f = u - 1,
                    h = v - 1,
                    w = t - 1;
                switch (e) {
                    case j:
                    case m:
                    case o:
                    case i:
                        var a = 0,
                            b = 0;
                        break;
                    case k:
                    case l:
                    case n:
                    case p:
                        var a = f,
                            b = 0;
                        break;
                    default:
                        e = p;
                        var a = f,
                            b = 0
                }
                c = a;
                d = b;
                while (s < t) {
                    if (z(e) || y(e)) g(r, w - s++, [d, c]);
                    else g(r, s++, [d, c]);
                    switch (e) {
                        case j:
                        case m:
                            c--;
                            d++;
                            break;
                        case o:
                        case i:
                            c++;
                            d--;
                            break;
                        case k:
                        case l:
                            c--;
                            d--;
                            break;
                        case p:
                        case n:
                        default:
                            c++;
                            d++
                    }
                    if (c < 0 || d < 0 || c > f || d > h) {
                        switch (e) {
                            case j:
                            case m:
                                a++;
                                break;
                            case k:
                            case l:
                            case o:
                            case i:
                                b++;
                                break;
                            case p:
                            case n:
                            default:
                                a--
                        }
                        if (a < 0 || b < 0 || a > f || b > h) {
                            switch (e) {
                                case j:
                                case m:
                                    a = f;
                                    b++;
                                    break;
                                case o:
                                case i:
                                    b = h;
                                    a++;
                                    break;
                                case k:
                                case l:
                                    b = h;
                                    a--;
                                    break;
                                case p:
                                case n:
                                default:
                                    a = 0;
                                    b++
                            }
                            if (b > h) b = h;
                            else if (b < 0) b = 0;
                            else if (a > f) a = f;
                            else if (a < 0) a = 0
                        }
                        d = b;
                        c = a
                    }
                }
                return r
            };
            h.we = function(d) {
                for (var e = [], a, b = 0; b < d.k; b++)
                    for (a = 0; a < d.i; a++) g(e, c.ceil(1e5 * c.random()) % 13, [b, a]);
                return e
            }
        },
        s = function(k, s, q, t, y) {
            var e = this,
                u, g, a, x = 0,
                w = t.ie,
                r, h = 8;

            function i(g, e) {
                var a = {
                    ib: e,
                    q: 1,
                    o: 0,
                    i: 1,
                    k: 1,
                    F: 0,
                    B: 0,
                    a: 0,
                    mb: l,
                    G: l,
                    zc: l,
                    K: n.we,
                    R: 1032,
                    Dc: {
                        Pc: 0,
                        He: 0
                    },
                    l: f.Fd,
                    J: {},
                    Ob: [],
                    gb: {}
                };
                b.H(a, g);
                a.Rc = a.i * a.k;
                a.l = b.Tc(a.l);
                a.qf = c.ceil(a.q / a.ib);
                a.sf = function(c, b) {
                    c /= a.i;
                    b /= a.k;
                    var f = c + "x" + b;
                    if (!a.Ob[f]) {
                        a.Ob[f] = {
                            X: c,
                            Y: b
                        };
                        for (var d = 0; d < a.i; d++)
                            for (var e = 0; e < a.k; e++) a.Ob[f][e + "," + d] = {
                                c: e * b,
                                u: d * c + c,
                                s: e * b + b,
                                e: d * c
                            }
                    }
                    return a.Ob[f]
                };
                if (a.gc) {
                    a.gc = i(a.gc, e);
                    a.G = d
                }
                return a
            }

            function p(B, h, a, w, o, m) {
                var z = this,
                    u, v = {},
                    i = {},
                    n = [],
                    f, e, s, q = a.Dc.Pc || 0,
                    r = a.Dc.He || 0,
                    g = a.sf(o, m),
                    p = C(a),
                    D = p.length - 1,
                    t = a.q + a.o * D,
                    x = w + t,
                    k = a.G,
                    y;
                x += 50;

                function C(a) {
                    var b = a.K(a);
                    return a.zc ? b.reverse() : b
                }
                z.dd = x;
                z.Sb = function(d) {
                    d -= w;
                    var e = d < t;
                    if (e || y) {
                        y = e;
                        if (!k) d = t - d;
                        var f = c.ceil(d / a.ib);
                        b.g(i, function(a, e) {
                            var d = c.max(f, a.Ef);
                            d = c.min(d, a.length - 1);
                            if (a.cd != d) {
                                if (!a.cd && !k) b.z(n[e]);
                                else d == a.Qe && k && b.Q(n[e]);
                                a.cd = d;
                                b.E(n[e], a[d])
                            }
                        })
                    }
                };
                h = b.V(h);
                b.Ib(h, j);
                if (b.tb()) {
                    var E = !h["no-image"],
                        A = b.df(h);
                    b.g(A, function(a) {
                        (E || a["jssor-slider"]) && b.Jb(a, b.Jb(a), d)
                    })
                }
                b.g(p, function(h, j) {
                    b.g(h, function(G) {
                        var K = G[0],
                            J = G[1],
                            t = K + "," + J,
                            n = l,
                            p = l,
                            x = l;
                        if (q && J % 2) {
                            if (q & 3) n = !n;
                            if (q & 12) p = !p;
                            if (q & 16) x = !x
                        }
                        if (r && K % 2) {
                            if (r & 3) n = !n;
                            if (r & 12) p = !p;
                            if (r & 16) x = !x
                        }
                        a.c = a.c || a.a & 4;
                        a.s = a.s || a.a & 8;
                        a.e = a.e || a.a & 1;
                        a.u = a.u || a.a & 2;
                        var E = p ? a.s : a.c,
                            B = p ? a.c : a.s,
                            D = n ? a.u : a.e,
                            C = n ? a.e : a.u;
                        a.a = E || B || D || C;
                        s = {};
                        e = {
                            c: 0,
                            e: 0,
                            F: 1,
                            X: o,
                            Y: m
                        };
                        f = b.H({}, e);
                        u = b.H({}, g[t]);
                        if (a.F) e.F = 2 - a.F;
                        if (a.N) {
                            e.N = a.N;
                            f.N = 0
                        }
                        var I = a.i * a.k > 1 || a.a;
                        if (a.B || a.L) {
                            var H = d;
                            if (b.tb())
                                if (a.i * a.k > 1) H = l;
                                else I = l;
                            if (H) {
                                e.B = a.B ? a.B - 1 : 1;
                                f.B = 1;
                                if (b.tb() || b.Cd()) e.B = c.min(e.B, 2);
                                var N = a.L || 0;
                                e.L = N * 360 * (x ? -1 : 1);
                                f.L = 0
                            }
                        }
                        if (I) {
                            var h = u.bc = {};
                            if (a.a) {
                                var w = a.Of || 1;
                                if (E && B) {
                                    h.c = g.Y / 2 * w;
                                    h.s = -h.c
                                } else if (E) h.s = -g.Y * w;
                                else if (B) h.c = g.Y * w;
                                if (D && C) {
                                    h.e = g.X / 2 * w;
                                    h.u = -h.e
                                } else if (D) h.u = -g.X * w;
                                else if (C) h.e = g.X * w
                            }
                            s.a = u;
                            f.a = g[t]
                        }
                        var L = n ? 1 : -1,
                            M = p ? 1 : -1;
                        if (a.x) e.e += o * a.x * L;
                        if (a.y) e.c += m * a.y * M;
                        b.g(e, function(a, c) {
                            if (b.Yc(a))
                                if (a != f[c]) s[c] = a - f[c]
                        });
                        v[t] = k ? f : e;
                        var F = a.qf,
                            A = c.round(j * a.o / a.ib);
                        i[t] = new Array(A);
                        i[t].Ef = A;
                        i[t].Qe = A + F - 1;
                        for (var z = 0; z <= F; z++) {
                            var y = b.Qc(f, s, z / F, a.l, a.gb, a.J, {
                                mb: a.mb,
                                ob: o,
                                pb: m
                            });
                            y.N = y.N || 1;
                            i[t].push(y)
                        }
                    })
                });
                p.reverse();
                b.g(p, function(a) {
                    b.g(a, function(c) {
                        var f = c[0],
                            e = c[1],
                            d = f + "," + e,
                            a = h;
                        if (e || f) a = b.V(h);
                        b.E(a, v[d]);
                        b.xb(a, "hidden");
                        b.A(a, "absolute");
                        B.Se(a);
                        n[d] = a;
                        b.z(a, !k)
                    })
                })
            }

            function v() {
                var b = this,
                    c = 0;
                m.call(b, 0, u);
                b.Zb = function(d, b) {
                    if (b - c > h) {
                        c = b;
                        a && a.Sb(b);
                        g && g.Sb(b)
                    }
                };
                b.Zc = r
            }
            e.Xe = function() {
                var a = 0,
                    b = t.Db,
                    d = b.length;
                if (w) a = x++ % d;
                else a = c.floor(c.random() * d);
                b[a] && (b[a].sb = a);
                return b[a]
            };
            e.gf = function(w, x, l, m, b) {
                r = b;
                b = i(b, h);
                var j = m.Sc,
                    f = l.Sc;
                j["no-image"] = !m.ic;
                f["no-image"] = !l.ic;
                var n = j,
                    o = f,
                    v = b,
                    d = b.gc || i({}, h);
                if (!b.G) {
                    n = f;
                    o = j
                }
                var t = d.Pb || 0;
                g = new p(k, o, d, c.max(t - d.ib, 0), s, q);
                a = new p(k, n, v, c.max(d.ib - t, 0), s, q);
                g.Sb(0);
                a.Sb(0);
                u = c.max(g.dd, a.dd);
                e.sb = w
            };
            e.Cb = function() {
                k.Cb();
                g = j;
                a = j
            };
            e.jf = function() {
                var b = j;
                if (a) b = new v;
                return b
            };
            if (b.tb() || b.Cd() || y && b.Le() < 537) h = 16;
            o.call(e);
            m.call(e, -1e7, 1e7)
        },
        i = function(n, fc) {
            var e = this;

            function Bc() {
                var a = this;
                m.call(a, -1e8, 2e8);
                a.mf = function() {
                    var b = a.ub(),
                        d = c.floor(b),
                        f = t(d),
                        e = b - c.floor(b);
                    return {
                        sb: f,
                        Pe: d,
                        Bb: e
                    }
                };
                a.Zb = function(b, a) {
                    var f = c.floor(a);
                    if (f != a && a > b) f++;
                    Ub(f, d);
                    e.j(i.Ie, t(a), t(b), a, b)
                }
            }

            function Ac() {
                var a = this;
                m.call(a, 0, 0, {
                    gd: r
                });
                b.g(C, function(b) {
                    D & 1 && b.Ud(r);
                    a.Cc(b);
                    b.Pb(ib / bc)
                })
            }

            function zc() {
                var a = this,
                    b = Tb.bb;
                m.call(a, -1, 2, {
                    l: f.re,
                    ee: {
                        Bb: Zb
                    },
                    gd: r
                }, b, {
                    Bb: 1
                }, {
                    Bb: -2
                });
                a.ec = b
            }

            function nc(o, n) {
                var b = this,
                    f, g, h, k, c;
                m.call(b, -1e8, 2e8, {
                    Ic: 100
                });
                b.Oc = function() {
                    M = d;
                    S = j;
                    e.j(i.Qd, t(w.db()), w.db())
                };
                b.Hc = function() {
                    M = l;
                    k = l;
                    var a = w.mf();
                    e.j(i.vf, t(w.db()), w.db());
                    !a.Bb && Dc(a.Pe, s)
                };
                b.Zb = function(i, e) {
                    var b;
                    if (k) b = c;
                    else {
                        b = g;
                        if (h) {
                            var d = e / h;
                            b = a.yf(d) * (g - f) + f
                        }
                    }
                    w.hb(b)
                };
                b.Tb = function(a, d, c, e) {
                    f = a;
                    g = d;
                    h = c;
                    w.hb(a);
                    b.hb(0);
                    b.Kc(c, e)
                };
                b.Ne = function(a) {
                    k = d;
                    c = a;
                    b.Jc(a, j, d)
                };
                b.Re = function(a) {
                    c = a
                };
                w = new Bc;
                w.Nc(o);
                w.Nc(n)
            }

            function pc() {
                var c = this,
                    a = Xb();
                b.D(a, 0);
                b.W(a, "pointerEvents", "none");
                c.bb = a;
                c.Se = function(c) {
                    b.M(a, c);
                    b.z(a)
                };
                c.Cb = function() {
                    b.Q(a);
                    b.hc(a)
                }
            }

            function xc(n, g) {
                var f = this,
                    q, L, v, k, y = [],
                    x, B, W, G, Q, F, h, w, p;
                m.call(f, -u, u + 1, {});

                function E(a) {
                    q && q.id();
                    T(n, a, 0);
                    F = d;
                    q = new I.S(n, I, b.Vd(b.m(n, "idle")) || lc);
                    q.hb(0)
                }

                function Z() {
                    q.fc < I.fc && E()
                }

                function M(p, r, o) {
                    if (!G) {
                        G = d;
                        if (k && o) {
                            var h = o.width,
                                c = o.height,
                                n = h,
                                m = c;
                            if (h && c && a.Hb) {
                                if (a.Hb & 3 && (!(a.Hb & 4) || h > K || c > J)) {
                                    var j = l,
                                        q = K / J * c / h;
                                    if (a.Hb & 1) j = q > 1;
                                    else if (a.Hb & 2) j = q < 1;
                                    n = j ? h * J / c : K;
                                    m = j ? J : c * K / h
                                }
                                b.n(k, n);
                                b.p(k, m);
                                b.U(k, (J - m) / 2);
                                b.P(k, (K - n) / 2)
                            }
                            b.A(k, "absolute");
                            e.j(i.Ze, g)
                        }
                    }
                    b.Q(r);
                    p && p(f)
                }

                function Y(b, c, d, e) {
                    if (e == S && s == g && N)
                        if (!Cc) {
                            var a = t(b);
                            A.gf(a, g, c, f, d);
                            c.Ye();
                            U.Pb(a - U.ed() - 1);
                            U.hb(a);
                            z.Tb(b, b, 0)
                        }
                }

                function cb(b) {
                    if (b == S && s == g) {
                        if (!h) {
                            var a = j;
                            if (A)
                                if (A.sb == g) a = A.jf();
                                else A.Cb();
                            Z();
                            h = new vc(n, g, a, q);
                            h.qd(p)
                        }!h.Mc() && h.dc()
                    }
                }

                function R(d, e, l) {
                    if (d == g) {
                        if (d != e) C[e] && C[e].Ue();
                        else !l && h && h.Ke();
                        p && p.fd();
                        var m = S = b.Z();
                        f.wb(b.O(j, cb, m))
                    } else {
                        var k = c.min(g, d),
                            i = c.max(g, d),
                            o = c.min(i - k, k + r - i),
                            n = u + a.Je - 1;
                        (!Q || o <= n) && f.wb()
                    }
                }

                function db() {
                    if (s == g && h) {
                        h.rb();
                        p && p.Gf();
                        p && p.Ff();
                        h.td()
                    }
                }

                function eb() {
                    s == g && h && h.rb()
                }

                function ab(a) {
                    !P && e.j(i.wf, g, a)
                }

                function O() {
                    p = w.pInstance;
                    h && h.qd(p)
                }
                f.wb = function(c, a) {
                    a = a || v;
                    if (y.length && !G) {
                        b.z(a);
                        if (!W) {
                            W = d;
                            e.j(i.uf, g);
                            b.g(y, function(a) {
                                if (!b.C(a, "src")) {
                                    a.src = b.m(a, "src2");
                                    b.cb(a, a["display-origin"])
                                }
                            })
                        }
                        b.Pd(y, k, b.O(j, M, c, a))
                    } else M(c, a)
                };
                f.tf = function() {
                    var h = g;
                    if (a.vd < 0) h -= r;
                    var d = h + a.vd * tc;
                    if (D & 2) d = t(d);
                    if (!(D & 1)) d = c.max(0, c.min(d, r - u));
                    if (d != g) {
                        if (A) {
                            var e = A.Xe(r);
                            if (e) {
                                var i = S = b.Z(),
                                    f = C[t(d)];
                                return f.wb(b.O(j, Y, d, f, e, i), v)
                            }
                        }
                        bb(d)
                    }
                };
                f.lc = function() {
                    R(g, g, d)
                };
                f.Ue = function() {
                    p && p.Gf();
                    p && p.Ff();
                    f.wd();
                    h && h.pf();
                    h = j;
                    E()
                };
                f.Ye = function() {
                    b.Q(n)
                };
                f.wd = function() {
                    b.z(n)
                };
                f.of = function() {
                    p && p.fd()
                };

                function T(a, c, e) {
                    if (b.C(a, "jssor-slider")) return;
                    if (!F) {
                        if (a.tagName == "IMG") {
                            y.push(a);
                            if (!b.C(a, "src")) {
                                Q = d;
                                a["display-origin"] = b.cb(a);
                                b.Q(a)
                            }
                        }
                        b.tb() && b.D(a, (b.D(a) || 0) + 1)
                    }
                    var f = b.Xb(a);
                    b.g(f, function(f) {
                        var h = f.tagName,
                            i = b.m(f, "u");
                        if (i == "player" && !w) {
                            w = f;
                            if (w.pInstance) O();
                            else b.f(w, "dataavailable", O)
                        }
                        if (i == "caption") {
                            if (c) {
                                b.Gc(f, b.m(f, "to"));
                                b.Bf(f, b.m(f, "bf"));
                                b.m(f, "3d") && b.Cf(f, "preserve-3d")
                            } else if (!b.kd()) {
                                var g = b.V(f, l, d);
                                b.Mb(g, f, a);
                                b.Nb(f, a);
                                f = g;
                                c = d
                            }
                        } else if (!F && !e && !k) {
                            if (h == "A") {
                                if (b.m(f, "u") == "image") k = b.ef(f, "IMG");
                                else k = b.I(f, "image", d);
                                if (k) {
                                    x = f;
                                    b.cb(x, "block");
                                    b.E(x, V);
                                    B = b.V(x, d);
                                    b.A(x, "relative");
                                    b.Jb(B, 0);
                                    b.W(B, "backgroundColor", "#000")
                                }
                            } else if (h == "IMG" && b.m(f, "u") == "image") k = f;
                            if (k) {
                                k.border = 0;
                                b.E(k, V)
                            }
                        }
                        T(f, c, e + 1)
                    })
                }
                f.Ac = function(c, b) {
                    var a = u - b;
                    Zb(L, a)
                };
                f.sb = g;
                o.call(f);
                b.If(n, b.m(n, "p"));
                b.lf(n, b.m(n, "po"));
                var H = b.I(n, "thumb", d);
                if (H) {
                    b.V(H);
                    b.Q(H)
                }
                b.z(n);
                v = b.V(fb);
                b.D(v, 1e3);
                b.f(n, "click", ab);
                E(d);
                f.ic = k;
                f.yd = B;
                f.Sc = n;
                f.ec = L = n;
                b.M(L, v);
                e.yb(203, R);
                e.yb(28, eb);
                e.yb(24, db)
            }

            function vc(y, g, p, q) {
                var a = this,
                    n = 0,
                    u = 0,
                    h, j, f, c, k, t, r, o = C[g];
                m.call(a, 0, 0);

                function v() {
                    b.hc(L);
                    cc && k && o.yd && b.M(L, o.yd);
                    b.z(L, !k && o.ic)
                }

                function w() {
                    a.dc()
                }

                function x(b) {
                    r = b;
                    a.rb();
                    a.dc()
                }
                a.dc = function() {
                    var b = a.ub();
                    if (!B && !M && !r && s == g) {
                        if (!b) {
                            if (h && !k) {
                                k = d;
                                a.td(d);
                                e.j(i.xf, g, n, u, h, c)
                            }
                            v()
                        }
                        var l, p = i.zd;
                        if (b != c)
                            if (b == f) l = c;
                            else if (b == j) l = f;
                            else if (!b) l = j;
                            else l = a.Lc();
                        e.j(p, g, b, n, j, f, c);
                        var m = N && (!E || F);
                        if (b == c)(f != c && !(E & 12) || m) && o.tf();
                        else(m || b != f) && a.Kc(l, w)
                    }
                };
                a.Ke = function() {
                    f == c && f == a.ub() && a.hb(j)
                };
                a.pf = function() {
                    A && A.sb == g && A.Cb();
                    var b = a.ub();
                    b < c && e.j(i.zd, g, -b - 1, n, j, f, c)
                };
                a.td = function(a) {
                    p && b.xb(jb, a && p.Zc.kb ? "" : "hidden")
                };
                a.Ac = function(b, a) {
                    if (k && a >= h) {
                        k = l;
                        v();
                        o.wd();
                        A.Cb();
                        e.j(i.Jf, g, n, u, h, c)
                    }
                    e.j(i.Hf, g, a, n, j, f, c)
                };
                a.qd = function(a) {
                    if (a && !t) {
                        t = a;
                        a.yb($JssorPlayer$.ye, x)
                    }
                };
                p && a.Cc(p);
                h = a.kc();
                a.Cc(q);
                j = h + q.pd;
                f = h + q.Dd;
                c = a.kc()
            }

            function Kb(a, c, d) {
                b.P(a, c);
                b.U(a, d)
            }

            function Zb(c, b) {
                var a = x > 0 ? x : eb,
                    d = zb * b * (a & 1),
                    e = Ab * b * (a >> 1 & 1);
                Kb(c, d, e)
            }

            function Pb() {
                pb = M;
                Ib = z.Lc();
                G = w.db()
            }

            function gc() {
                Pb();
                if (B || !F && E & 12) {
                    z.rb();
                    e.j(i.We)
                }
            }

            function ec(f) {
                if (!B && (F || !(E & 12)) && !z.Mc()) {
                    var d = w.db(),
                        b = c.ceil(G);
                    if (f && c.abs(H) >= a.Ad) {
                        b = c.ceil(d);
                        b += hb
                    }
                    if (!(D & 1)) b = c.min(r - u, c.max(b, 0));
                    var e = c.abs(b - d);
                    e = 1 - c.pow(1 - e, 5);
                    if (!P && pb) z.ue(Ib);
                    else if (d == b) {
                        sb.of();
                        sb.lc()
                    } else z.Tb(d, b, e * Vb)
                }
            }

            function Hb(a) {
                !b.m(b.cc(a), "nodrag") && b.ac(a)
            }

            function rc(a) {
                Yb(a, 1)
            }

            function Yb(a, c) {
                a = b.Ld(a);
                var k = b.cc(a);
                if (!O && !b.m(k, "nodrag") && sc() && (!c || a.touches.length == 1)) {
                    B = d;
                    yb = l;
                    S = j;
                    b.f(h, c ? "touchmove" : "mousemove", Bb);
                    b.Z();
                    P = 0;
                    gc();
                    if (!pb) x = 0;
                    if (c) {
                        var g = a.touches[0];
                        ub = g.clientX;
                        vb = g.clientY
                    } else {
                        var f = b.hd(a);
                        ub = f.x;
                        vb = f.y
                    }
                    H = 0;
                    gb = 0;
                    hb = 0;
                    e.j(i.be, t(G), G, a)
                }
            }

            function Bb(e) {
                if (B) {
                    e = b.Ld(e);
                    var f;
                    if (e.type != "mousemove") {
                        var l = e.touches[0];
                        f = {
                            x: l.clientX,
                            y: l.clientY
                        }
                    } else f = b.hd(e);
                    if (f) {
                        var j = f.x - ub,
                            k = f.y - vb;
                        if (c.floor(G) != G) x = x || eb & O;
                        if ((j || k) && !x) {
                            if (O == 3)
                                if (c.abs(k) > c.abs(j)) x = 2;
                                else x = 1;
                            else x = O;
                            if (mb && x == 1 && c.abs(k) - c.abs(j) > 3) yb = d
                        }
                        if (x) {
                            var a = k,
                                i = Ab;
                            if (x == 1) {
                                a = j;
                                i = zb
                            }
                            if (!(D & 1)) {
                                if (a > 0) {
                                    var g = i * s,
                                        h = a - g;
                                    if (h > 0) a = g + c.sqrt(h) * 5
                                }
                                if (a < 0) {
                                    var g = i * (r - u - s),
                                        h = -a - g;
                                    if (h > 0) a = -g - c.sqrt(h) * 5
                                }
                            }
                            if (H - gb < -2) hb = 0;
                            else if (H - gb > 2) hb = -1;
                            gb = H;
                            H = a;
                            rb = G - H / i / (Y || 1);
                            if (H && x && !yb) {
                                b.ac(e);
                                if (!M) z.Ne(rb);
                                else z.Re(rb)
                            }
                        }
                    }
                }
            }

            function ab() {
                qc();
                if (B) {
                    B = l;
                    b.Z();
                    b.T(h, "mousemove", Bb);
                    b.T(h, "touchmove", Bb);
                    P = H;
                    z.rb();
                    var a = w.db();
                    e.j(i.ae, t(a), a, t(G), G);
                    E & 12 && Pb();
                    ec(d)
                }
            }

            function jc(c) {
                if (P) {
                    b.Te(c);
                    var a = b.cc(c);
                    while (a && v !== a) {
                        a.tagName == "A" && b.ac(c);
                        try {
                            a = a.parentNode
                        } catch (d) {
                            break
                        }
                    }
                }
            }

            function Jb(a) {
                C[s];
                s = t(a);
                sb = C[s];
                Ub(a);
                return s
            }

            function Dc(a, b) {
                x = 0;
                Jb(a);
                e.j(i.Zd, t(a), b)
            }

            function Ub(a, c) {
                wb = a;
                b.g(T, function(b) {
                    b.Bc(t(a), a, c)
                })
            }

            function sc() {
                var b = i.xd || 0,
                    a = X;
                if (mb) a & 1 && (a &= 1);
                i.xd |= a;
                return O = a & ~b
            }

            function qc() {
                if (O) {
                    i.xd &= ~X;
                    O = 0
                }
            }

            function Xb() {
                var a = b.Ub();
                b.E(a, V);
                b.A(a, "absolute");
                return a
            }

            function t(a) {
                return (a % r + r) % r
            }

            function kc(b, d) {
                if (d)
                    if (!D) {
                        b = c.min(c.max(b + wb, 0), r - u);
                        d = l
                    } else if (D & 2) {
                        b = t(b + wb);
                        d = l
                    }
                bb(b, a.yc, d)
            }

            function xb() {
                b.g(T, function(a) {
                    a.xc(a.Vb.Pf <= F)
                })
            }

            function hc() {
                if (!F) {
                    F = 1;
                    xb();
                    if (!B) {
                        E & 12 && ec();
                        E & 3 && C[s].lc()
                    }
                }
            }

            function Ec() {
                if (F) {
                    F = 0;
                    xb();
                    B || !(E & 12) || gc()
                }
            }

            function ic() {
                V = {
                    X: K,
                    Y: J,
                    c: 0,
                    e: 0
                };
                b.g(Q, function(a) {
                    b.E(a, V);
                    b.A(a, "absolute");
                    b.xb(a, "hidden");
                    b.Q(a)
                });
                b.E(fb, V)
            }

            function ob(b, a) {
                bb(b, a, d)
            }

            function bb(g, f, j) {
                if (Rb && (!B && (F || !(E & 12)) || a.ud)) {
                    M = d;
                    B = l;
                    z.rb();
                    if (f == k) f = Vb;
                    var e = Cb.ub(),
                        b = g;
                    if (j) {
                        b = e + g;
                        if (g > 0) b = c.ceil(b);
                        else b = c.floor(b)
                    }
                    if (D & 2) b = t(b);
                    if (!(D & 1)) b = c.max(0, c.min(b, r - u));
                    var i = (b - e) % r;
                    b = e + i;
                    var h = e == b ? 0 : f * c.abs(i);
                    h = c.min(h, f * u * 1.5);
                    z.Tb(e, b, h || 1)
                }
            }
            e.Jc = function() {
                if (!N) {
                    N = d;
                    C[s] && C[s].lc()
                }
            };

            function W() {
                return b.n(y || n)
            }

            function lb() {
                return b.p(y || n)
            }
            e.ob = W;
            e.pb = lb;

            function Eb(c, d) {
                if (c == k) return b.n(n);
                if (!y) {
                    var a = b.Ub(h);
                    b.bd(a, b.bd(n));
                    b.Kb(a, b.Kb(n));
                    b.cb(a, "block");
                    b.A(a, "relative");
                    b.U(a, 0);
                    b.P(a, 0);
                    b.xb(a, "visible");
                    y = b.Ub(h);
                    b.A(y, "absolute");
                    b.U(y, 0);
                    b.P(y, 0);
                    b.n(y, b.n(n));
                    b.p(y, b.p(n));
                    b.Gc(y, "0 0");
                    b.M(y, a);
                    var g = b.Xb(n);
                    b.M(n, y);
                    b.W(n, "backgroundImage", "");
                    b.g(g, function(c) {
                        b.M(b.m(c, "noscale") ? n : a, c);
                        b.m(c, "autocenter") && Mb.push(c)
                    })
                }
                Y = c / (d ? b.p : b.n)(y);
                b.kf(y, Y);
                var f = d ? Y * W() : c,
                    e = d ? c : Y * lb();
                b.n(n, f);
                b.p(n, e);
                b.g(Mb, function(a) {
                    var c = b.Xd(b.m(a, "autocenter"));
                    b.ce(a, c)
                })
            }
            e.rd = Eb;
            o.call(e);
            e.bb = n = b.vb(n);
            var a = b.H({
                Hb: 0,
                Je: 1,
                mc: 1,
                uc: 0,
                Fc: l,
                Wb: 1,
                Gb: d,
                ud: d,
                vd: 1,
                od: 3e3,
                nd: 1,
                yc: 500,
                yf: f.Id,
                Ad: 20,
                ld: 0,
                i: 1,
                jd: 0,
                ne: 1,
                tc: 1,
                Bd: 1
            }, fc);
            a.Gb = a.Gb && b.Ve();
            if (a.ke != k) a.od = a.ke;
            if (a.ge != k) a.jd = a.ge;
            var eb = a.tc & 3,
                tc = (a.tc & 4) / -4 || 1,
                kb = a.Ee,
                I = b.H({
                    S: q,
                    Gb: a.Gb
                }, a.Lf);
            I.Db = I.Db || I.Kf;
            var Fb = a.le,
                Z = a.me,
                db = a.Mf,
                R = !a.ne,
                y, v = b.I(n, "slides", R),
                fb = b.I(n, "loading", R) || b.Ub(h),
                Nb = b.I(n, "navigator", R),
                dc = b.I(n, "arrowleft", R),
                ac = b.I(n, "arrowright", R),
                Lb = b.I(n, "thumbnavigator", R),
                oc = b.n(v),
                mc = b.p(v),
                V, Q = [],
                uc = b.Xb(v);
            b.g(uc, function(a) {
                if (a.tagName == "DIV" && !b.m(a, "u")) Q.push(a);
                else b.tb() && b.D(a, (b.D(a) || 0) + 1)
            });
            var s = -1,
                wb, sb, r = Q.length,
                K = a.oe || oc,
                J = a.pe || mc,
                Wb = a.ld,
                zb = K + Wb,
                Ab = J + Wb,
                bc = eb & 1 ? zb : Ab,
                u = c.min(a.i, r),
                jb, x, O, yb, T = [],
                Qb, Sb, Ob, cc, Cc, N, E = a.nd,
                lc = a.od,
                Vb = a.yc,
                qb, tb, ib, Rb = u < r,
                D = Rb ? a.Wb : 0,
                X, P, F = 1,
                M, B, S, ub = 0,
                vb = 0,
                H, gb, hb, Cb, w, U, z, Tb = new pc,
                Y, Mb = [];
            if (a.Gb) Kb = function(a, c, d) {
                b.Ib(a, {
                    nb: c,
                    jb: d
                })
            };
            N = a.Fc;
            e.Vb = fc;
            ic();
            b.C(n, "jssor-slider", d);
            b.D(v, b.D(v) || 0);
            b.A(v, "absolute");
            jb = b.V(v, d);
            b.Mb(jb, v);
            if (kb) {
                cc = kb.Nf;
                qb = kb.S;
                tb = u == 1 && r > 1 && qb && (!b.kd() || b.Jd() >= 8)
            }
            ib = tb || u >= r || !(D & 1) ? 0 : a.jd;
            X = (u > 1 || ib ? eb : -1) & a.Bd;
            var Gb = v,
                C = [],
                A, L, Db = b.ff(),
                mb = Db.af,
                G, pb, Ib, rb;
            Db.md && b.W(Gb, Db.md, ([j, "pan-y", "pan-x", "none"])[X] || "");
            U = new zc;
            if (tb) A = new qb(Tb, K, J, kb, mb);
            b.M(jb, U.ec);
            b.xb(v, "hidden");
            L = Xb();
            b.W(L, "backgroundColor", "#000");
            b.Jb(L, 0);
            b.Mb(L, Gb.firstChild, Gb);
            for (var cb = 0; cb < Q.length; cb++) {
                var wc = Q[cb],
                    yc = new xc(wc, cb);
                C.push(yc)
            }
            b.Q(fb);
            Cb = new Ac;
            z = new nc(Cb, U);
            if (X) {
                b.f(v, "mousedown", Yb);
                b.f(v, "touchstart", rc);
                b.f(v, "dragstart", Hb);
                b.f(v, "selectstart", Hb);
                b.f(h, "mouseup", ab);
                b.f(h, "touchend", ab);
                b.f(h, "touchcancel", ab);
                b.f(g, "blur", ab)
            }
            E &= mb ? 10 : 5;
            if (Nb && Fb) {
                Qb = new Fb.S(Nb, Fb, W(), lb());
                T.push(Qb)
            }
            if (Z && dc && ac) {
                Z.Wb = D;
                Z.i = u;
                Sb = new Z.S(dc, ac, Z, W(), lb());
                T.push(Sb)
            }
            if (Lb && db) {
                db.uc = a.uc;
                Ob = new db.S(Lb, db);
                T.push(Ob)
            }
            b.g(T, function(a) {
                a.oc(r, C, fb);
                a.yb(p.pc, kc)
            });
            b.W(n, "visibility", "visible");
            Eb(W());
            b.f(v, "click", jc, d);
            b.f(n, "mouseout", b.jc(hc, n));
            b.f(n, "mouseover", b.jc(Ec, n));
            xb();
            a.mc && b.f(h, "keydown", function(b) {
                if (b.keyCode == 37) ob(-a.mc);
                else b.keyCode == 39 && ob(a.mc)
            });
            var nb = a.uc;
            if (!(D & 1)) nb = c.max(0, c.min(nb, r - u));
            z.Tb(nb, nb, 0)
        };
    i.wf = 21;
    i.be = 22;
    i.ae = 23;
    i.Qd = 24;
    i.vf = 25;
    i.uf = 26;
    i.Ze = 27;
    i.We = 28;
    i.Ie = 202;
    i.Zd = 203;
    i.xf = 206;
    i.Jf = 207;
    i.Hf = 208;
    i.zd = 209;
    var p = {
            pc: 1
        },
        r = function(e, C) {
            var f = this;
            o.call(f);
            e = b.vb(e);
            var s, A, z, r, k = 0,
                a, m, i, w, x, h, g, q, n, B = [],
                y = [];

            function v(a) {
                a != -1 && y[a].Rd(a == k)
            }

            function t(a) {
                f.j(p.pc, a * m)
            }
            f.bb = e;
            f.Bc = function(a) {
                if (a != r) {
                    var d = k,
                        b = c.floor(a / m);
                    k = b;
                    r = a;
                    v(d);
                    v(b)
                }
            };
            f.xc = function(a) {
                b.z(e, a)
            };
            var u;
            f.oc = function(D) {
                if (!u) {
                    s = c.ceil(D / m);
                    k = 0;
                    var p = q + w,
                        r = n + x,
                        o = c.ceil(s / i) - 1;
                    A = q + p * (!h ? o : i - 1);
                    z = n + r * (h ? o : i - 1);
                    b.n(e, A);
                    b.p(e, z);
                    for (var f = 0; f < s; f++) {
                        var C = b.Oe();
                        b.cf(C, f + 1);
                        var l = b.Sd(g, "numbertemplate", C, d);
                        b.A(l, "absolute");
                        var v = f % (o + 1);
                        b.P(l, !h ? p * v : f % i * p);
                        b.U(l, h ? r * v : c.floor(f / (o + 1)) * r);
                        b.M(e, l);
                        B[f] = l;
                        a.wc & 1 && b.f(l, "click", b.O(j, t, f));
                        a.wc & 2 && b.f(l, "mouseover", b.jc(b.O(j, t, f), l));
                        y[f] = b.Ec(l)
                    }
                    u = d
                }
            };
            f.Vb = a = b.H({
                Hd: 10,
                Ed: 10,
                Nd: 1,
                wc: 1
            }, C);
            g = b.I(e, "prototype");
            q = b.n(g);
            n = b.p(g);
            b.Nb(g, e);
            m = a.Md || 1;
            i = a.k || 1;
            w = a.Hd;
            x = a.Ed;
            h = a.Nd - 1;
            a.sc == l && b.C(e, "noscale", d);
            a.Ab && b.C(e, "autocenter", a.Ab)
        },
        t = function(a, g, h) {
            var c = this;
            o.call(c);
            var r, q, e, f, i;
            b.n(a);
            b.p(a);

            function k(a) {
                c.j(p.pc, a, d)
            }

            function n(c) {
                b.z(a, c || !h.Wb && e == 0);
                b.z(g, c || !h.Wb && e >= q - h.i);
                r = c
            }
            c.Bc = function(b, a, c) {
                if (c) e = a;
                else {
                    e = b;
                    n(r)
                }
            };
            c.xc = n;
            var m;
            c.oc = function(c) {
                q = c;
                e = 0;
                if (!m) {
                    b.f(a, "click", b.O(j, k, -i));
                    b.f(g, "click", b.O(j, k, i));
                    b.Ec(a);
                    b.Ec(g);
                    m = d
                }
            };
            c.Vb = f = b.H({
                Md: 1
            }, h);
            i = f.Md;
            if (f.sc == l) {
                b.C(a, "noscale", d);
                b.C(g, "noscale", d)
            }
            if (f.Ab) {
                b.C(a, "autocenter", f.Ab);
                b.C(g, "autocenter", f.Ab)
            }
        };

    function q(e, d, c) {
        var a = this;
        m.call(a, 0, c);
        a.id = b.ad;
        a.pd = 0;
        a.Dd = c
    }
    jssor_1_slider_init = function() {
        var h = [{
                q: 1200,
                x: .2,
                y: -.1,
                o: 20,
                i: 8,
                k: 4,
                a: 15,
                gb: {
                    e: [.3, .7],
                    c: [.3, .7]
                },
                K: n.zb,
                R: 260,
                l: {
                    e: e.Rb,
                    c: e.Rb,
                    a: e.qb
                },
                kb: d,
                J: {
                    e: 1.3,
                    c: 2.5
                }
            }, {
                q: 1500,
                x: .3,
                y: -.3,
                o: 20,
                i: 8,
                k: 4,
                a: 15,
                gb: {
                    e: [.1, .9],
                    c: [.1, .9]
                },
                G: d,
                K: n.zb,
                R: 260,
                l: {
                    e: e.Yb,
                    c: e.Yb,
                    a: e.qb
                },
                kb: d,
                J: {
                    e: .8,
                    c: 2.5
                }
            }, {
                q: 1500,
                x: .2,
                y: -.1,
                o: 20,
                i: 8,
                k: 4,
                a: 15,
                gb: {
                    e: [.3, .7],
                    c: [.3, .7]
                },
                K: n.zb,
                R: 260,
                l: {
                    e: e.Rb,
                    c: e.Rb,
                    a: e.qb
                },
                kb: d,
                J: {
                    e: .8,
                    c: 2.5
                }
            }, {
                q: 1500,
                x: .3,
                y: -.3,
                o: 80,
                i: 8,
                k: 4,
                a: 15,
                gb: {
                    e: [.3, .7],
                    c: [.3, .7]
                },
                l: {
                    e: e.Yb,
                    c: e.Yb,
                    a: e.qb
                },
                kb: d,
                J: {
                    e: .8,
                    c: 2.5
                }
            }, {
                q: 1800,
                x: 1,
                y: .2,
                o: 30,
                i: 10,
                k: 5,
                a: 15,
                gb: {
                    e: [.3, .7],
                    c: [.3, .7]
                },
                G: d,
                zc: d,
                K: n.zb,
                R: 2050,
                l: {
                    e: e.he,
                    c: e.fe,
                    a: e.sd
                },
                kb: d,
                J: {
                    c: 1.3
                }
            }, {
                q: 1e3,
                o: 30,
                i: 8,
                k: 4,
                a: 15,
                G: d,
                K: n.zb,
                R: 2049,
                l: e.qb
            }, {
                q: 1e3,
                o: 80,
                i: 8,
                k: 4,
                a: 15,
                G: d,
                l: e.qb
            }, {
                q: 1e3,
                y: -1,
                i: 12,
                K: n.vc,
                Dc: {
                    Pc: 12
                }
            }, {
                q: 1e3,
                x: -.2,
                o: 40,
                i: 12,
                G: d,
                K: n.vc,
                R: 260,
                l: {
                    e: e.Wd,
                    F: e.sd
                },
                F: 2,
                kb: d,
                J: {
                    c: .5
                }
            }, {
                q: 2e3,
                y: -1,
                o: 60,
                i: 15,
                G: d,
                K: n.vc,
                l: e.Yd,
                J: {
                    c: 1.5
                }
            }],
            j = {
                Fc: d,
                Ee: {
                    S: s,
                    Db: h,
                    ie: 1
                },
                me: {
                    S: t
                },
                le: {
                    S: r
                }
            },
            f = new i("jssor_1", j);

        function a() {
            var b = f.bb.parentNode.clientWidth;
            if (b) {
                b = c.min(b, 1280);
                f.rd(b)
            } else g.setTimeout(a, 30)
        }
        a();
        b.f(g, "load", a);
        b.f(g, "resize", a);
        b.f(g, "orientationchange", a);

        function a() {
            var b = f.bb.parentNode.clientWidth;
            if (b) {
                b = c.min(b, 1280);
                f.rd(b)
            } else g.setTimeout(a, 30)
        }
        a();
        b.f(g, "load", a);
        b.f(g, "resize", a);
        b.f(g, "orientationchange", a)
    }
})(window, document, Math, null, true, false)
