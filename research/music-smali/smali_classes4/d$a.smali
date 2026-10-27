.class public final Ld$a;
.super Lc;
.source "ActivityResultContracts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc<",
        "[",
        "Ljava/lang/String;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Lc;-><init>()V

    return-void
.end method

.method static a([Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string v1, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    .line 158
    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ld$a;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 198
    invoke-static {p2}, Ld$a;->a([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    .line 158
    invoke-virtual {p0, p1, p2}, Ld$a;->b(ILandroid/content/Intent;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Landroid/content/Context;Ljava/lang/Object;)Lc$a;
    .locals 0

    .line 158
    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ld$a;->b(Landroid/content/Context;[Ljava/lang/String;)Lc$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;[Ljava/lang/String;)Lc$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lc$a<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 205
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    .line 209
    :cond_0
    new-instance v0, Landroidx/collection/a;

    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    .line 211
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v6, p2, v4

    .line 212
    invoke-static {p1, v6}, Ldj;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v2

    .line 214
    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v7, :cond_2

    move v5, v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    .line 219
    new-instance p1, Lc$a;

    invoke-direct {p1, v0}, Lc$a;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1

    .line 206
    :cond_5
    :goto_2
    new-instance p1, Lc$a;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p1, p2}, Lc$a;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public b(ILandroid/content/Intent;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 228
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 229
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "androidx.activity.result.contract.extra.PERMISSIONS"

    .line 231
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    .line 232
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p2

    if-eqz p2, :cond_5

    if-nez p1, :cond_2

    goto :goto_2

    .line 235
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 236
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 237
    aget-object v4, p1, v3

    aget v5, p2, v3

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    .line 233
    :cond_5
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
