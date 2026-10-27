.class public Lcom/ut/mini/UTHybridHelper;
.super Ljava/lang/Object;
.source "UTHybridHelper.java"


# static fields
.field private static a:Lcom/ut/mini/UTHybridHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/ut/mini/UTHybridHelper;

    invoke-direct {v0}, Lcom/ut/mini/UTHybridHelper;-><init>()V

    sput-object v0, Lcom/ut/mini/UTHybridHelper;->a:Lcom/ut/mini/UTHybridHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Date;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 132
    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 135
    :cond_0
    const-string p1, "urlpagename"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 136
    const-string v0, "url"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/ut/mini/UTHybridHelper;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    if-eqz v2, :cond_8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_4

    .line 144
    :cond_1
    const-string p1, "logkey"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    .line 146
    if-eqz v4, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_3

    .line 151
    :cond_2
    const/4 p1, 0x0

    .line 152
    const-string v0, "utjstype"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    const-string v1, "utjstype"

    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    if-eqz v0, :cond_4

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 156
    :cond_3
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    invoke-direct {p0, p2}, Lcom/ut/mini/UTHybridHelper;->f(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    goto :goto_1

    .line 155
    :cond_4
    :goto_0
    invoke-direct {p0, p2}, Lcom/ut/mini/UTHybridHelper;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 161
    :cond_5
    :goto_1
    move-object v7, p1

    new-instance p1, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const/16 v3, 0x835

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 162
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object p2

    .line 163
    if-eqz p2, :cond_6

    .line 164
    invoke-virtual {p1}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    goto :goto_2

    .line 166
    :cond_6
    const-string p1, "h5Ctrl event error"

    const-string p2, "Fatal Error,must call setRequestAuthentication method first."

    invoke-static {p1, p2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    :goto_2
    return-void

    .line 147
    :cond_7
    :goto_3
    const-string p1, "h5Ctrl"

    const-string p2, "logkey is null,return"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 148
    return-void

    .line 140
    :cond_8
    :goto_4
    const-string p1, "h5Ctrl"

    const-string p2, "pageName is null,return"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 141
    return-void

    .line 133
    :cond_9
    :goto_5
    return-void
.end method

.method private a(Ljava/util/Date;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 68
    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 72
    :cond_0
    const-string p1, "urlpagename"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 73
    const-string v0, "url"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/ut/mini/UTHybridHelper;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    if-eqz p1, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 84
    :cond_1
    invoke-static {}, Lcom/ut/mini/base/UTMIVariables;->getInstance()Lcom/ut/mini/base/UTMIVariables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/base/UTMIVariables;->getRefPage()Ljava/lang/String;

    move-result-object v4

    .line 86
    const/4 v0, 0x0

    .line 87
    const-string v1, "utjstype"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    const-string v2, "utjstype"

    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    if-eqz v1, :cond_4

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 91
    :cond_2
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    invoke-direct {p0, p2}, Lcom/ut/mini/UTHybridHelper;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    goto :goto_1

    .line 98
    :cond_3
    move-object v7, v0

    goto :goto_2

    .line 90
    :cond_4
    :goto_0
    invoke-direct {p0, p2}, Lcom/ut/mini/UTHybridHelper;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 98
    :goto_1
    move-object v7, p2

    :goto_2
    const/16 p2, 0x7d6

    .line 99
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ut/mini/UTPageHitHelper;->a(Ljava/lang/Object;)Z

    move-result v0

    const/16 v8, 0x7d1

    if-eqz v0, :cond_5

    .line 100
    nop

    .line 103
    move p2, v8

    :cond_5
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 105
    if-ne v8, p2, :cond_6

    .line 106
    invoke-static {}, Lcom/ut/mini/base/UTMIVariables;->getInstance()Lcom/ut/mini/base/UTMIVariables;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ut/mini/base/UTMIVariables;->setRefPage(Ljava/lang/String;)V

    .line 109
    :cond_6
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ut/mini/UTPageHitHelper;->c()Ljava/util/Map;

    move-result-object p1

    .line 110
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_7

    .line 111
    invoke-virtual {v0, p1}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 118
    :cond_7
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object p1

    .line 119
    if-eqz p1, :cond_8

    .line 120
    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    goto :goto_3

    .line 124
    :cond_8
    const-string p1, "h5Page event error"

    const-string p2, "Fatal Error,must call setRequestAuthentication method first."

    invoke-static {p1, p2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    :goto_3
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ut/mini/UTPageHitHelper;->a(Ljava/lang/Object;)V

    .line 129
    return-void

    .line 78
    :cond_9
    :goto_4
    const-string p1, "h5Page"

    const-string p2, "pageName is null,return"

    invoke-static {p1, p2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-void

    .line 69
    :cond_a
    :goto_5
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 268
    const-string v0, ""

    .line 269
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    goto :goto_0

    .line 272
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 273
    const-string p1, "?"

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 274
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 275
    nop

    .line 281
    move-object p1, p2

    goto :goto_0

    .line 277
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 281
    :cond_2
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private c(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 176
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    const-string v1, "url"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 179
    const-string v2, "_h5url"

    if-nez v1, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    if-eqz v1, :cond_4

    .line 182
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 183
    const-string v2, "spm"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 185
    const-string v3, "spm"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 187
    :cond_2
    const-string v2, "spm"

    const-string v3, "0.0.0.0"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :goto_1
    const-string v2, "scm"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 192
    const-string v2, "scm"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_3
    goto :goto_2

    .line 195
    :cond_4
    const-string v1, "spm"

    const-string v2, "0.0.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :goto_2
    const-string v1, "spmcnt"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    const-string v2, "_spmcnt"

    if-nez v1, :cond_5

    const-string v1, ""

    :cond_5
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v1, "spmpre"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    const-string v2, "_spmpre"

    if-nez v1, :cond_6

    const-string v1, ""

    :cond_6
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "lzsid"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    const-string v2, "_lzsid"

    if-nez v1, :cond_7

    const-string v1, ""

    :cond_7
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "extendargs"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 207
    const-string v2, "_h5ea"

    if-nez v1, :cond_8

    const-string v1, ""

    :cond_8
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "cna"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 210
    const-string v1, "_cna"

    if-nez p1, :cond_9

    const-string p1, ""

    :cond_9
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string p1, "_ish5"

    const-string v1, "1"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-object v0

    .line 173
    :cond_a
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 218
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    const-string v1, "url"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 224
    const-string v2, "_h5url"

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v1, "extendargs"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 227
    const-string v1, "_h5ea"

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string p1, "_ish5"

    const-string v1, "1"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-object v0

    .line 219
    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private e(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 239
    const-string v1, "logkeyargs"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 240
    const-string v2, "_lka"

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v1, "cna"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 243
    const-string v2, "_cna"

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v1, "extendargs"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 246
    const-string v1, "_h5ea"

    if-nez p1, :cond_3

    const-string p1, ""

    :cond_3
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string p1, "_ish5"

    const-string v1, "1"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-object v0

    .line 235
    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private f(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 254
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 260
    const-string v1, "extendargs"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 261
    const-string v1, "_h5ea"

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string p1, "_ish5"

    const-string v1, "1"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-object v0

    .line 255
    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance()Lcom/ut/mini/UTHybridHelper;
    .locals 1

    .line 29
    sget-object v0, Lcom/ut/mini/UTHybridHelper;->a:Lcom/ut/mini/UTHybridHelper;

    return-object v0
.end method


# virtual methods
.method public h5UT(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 40
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    const-string v0, "functype"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    if-nez v0, :cond_1

    .line 48
    const-string p1, "h5UT"

    const-string p2, "funcType is null"

    invoke-static {p1, p2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void

    .line 51
    :cond_1
    const-string v1, "utjstype"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    if-eqz v1, :cond_2

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 53
    const-string p1, "h5UT"

    const-string p2, "utjstype should be 1 or 0 or null"

    invoke-static {p1, p2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    return-void

    .line 57
    :cond_2
    const-string v1, "functype"

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 59
    const-string v2, "2001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    invoke-direct {p0, v1, p1, p2}, Lcom/ut/mini/UTHybridHelper;->a(Ljava/util/Date;Ljava/util/Map;Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_3
    const-string p2, "2101"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 62
    invoke-direct {p0, v1, p1}, Lcom/ut/mini/UTHybridHelper;->a(Ljava/util/Date;Ljava/util/Map;)V

    .line 65
    :cond_4
    :goto_0
    return-void

    .line 41
    :cond_5
    :goto_1
    const-string p1, "h5UT"

    const-string p2, "dataMap is empty"

    invoke-static {p1, p2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public setH5Url(Ljava/lang/String;)V
    .locals 1

    .line 33
    if-eqz p1, :cond_0

    .line 35
    invoke-static {}, Lcom/ut/mini/base/UTMIVariables;->getInstance()Lcom/ut/mini/base/UTMIVariables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/base/UTMIVariables;->setH5Url(Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method
