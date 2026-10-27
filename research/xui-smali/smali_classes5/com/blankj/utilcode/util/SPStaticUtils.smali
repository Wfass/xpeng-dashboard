.class public final Lcom/blankj/utilcode/util/SPStaticUtils;
.super Ljava/lang/Object;
.source "SPStaticUtils.java"


# static fields
.field private static sDefaultSPUtils:Lcom/blankj/utilcode/util/SPUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .line 337
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->clear(Lcom/blankj/utilcode/util/SPUtils;)V

    .line 338
    return-void
.end method

.method public static clear(Lcom/blankj/utilcode/util/SPUtils;)V
    .locals 2
    .param p0, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 711
    if-eqz p0, :cond_0

    .line 712
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/SPUtils;->clear()V

    .line 713
    return-void

    .line 711
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clear(Z)V
    .locals 1
    .param p0, "isCommit"    # Z

    .line 347
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->clear(ZLcom/blankj/utilcode/util/SPUtils;)V

    .line 348
    return-void
.end method

.method public static clear(ZLcom/blankj/utilcode/util/SPUtils;)V
    .locals 2
    .param p0, "isCommit"    # Z
    .param p1, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 722
    if-eqz p1, :cond_0

    .line 723
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/SPUtils;->clear(Z)V

    .line 724
    return-void

    .line 722
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 309
    if-eqz p0, :cond_0

    .line 310
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->contains(Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)Z

    move-result v0

    return v0

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static contains(Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 680
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 681
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/SPUtils;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 680
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 300
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->getAll(Lcom/blankj/utilcode/util/SPUtils;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getAll(Lcom/blankj/utilcode/util/SPUtils;)Ljava/util/Map;
    .locals 2
    .param p0, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/SPUtils;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 669
    if-eqz p0, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/SPUtils;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 669
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 232
    if-eqz p0, :cond_0

    .line 233
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->getBoolean(Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)Z

    move-result v0

    return v0

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBoolean(Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 592
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 593
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/SPUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Z

    .line 243
    if-eqz p0, :cond_0

    .line 244
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->getBoolean(Ljava/lang/String;ZLcom/blankj/utilcode/util/SPUtils;)Z

    move-result v0

    return v0

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBoolean(Ljava/lang/String;ZLcom/blankj/utilcode/util/SPUtils;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Z
    .param p2, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 604
    if-eqz p0, :cond_1

    .line 606
    if-eqz p2, :cond_0

    .line 607
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/SPUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 606
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;
    .locals 1

    .line 727
    sget-object v0, Lcom/blankj/utilcode/util/SPStaticUtils;->sDefaultSPUtils:Lcom/blankj/utilcode/util/SPUtils;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/blankj/utilcode/util/SPStaticUtils;->sDefaultSPUtils:Lcom/blankj/utilcode/util/SPUtils;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/SPUtils;->getInstance()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getFloat(Ljava/lang/String;)F
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 189
    if-eqz p0, :cond_0

    .line 190
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->getFloat(Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)F

    move-result v0

    return v0

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # F

    .line 200
    if-eqz p0, :cond_0

    .line 201
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->getFloat(Ljava/lang/String;FLcom/blankj/utilcode/util/SPUtils;)F

    move-result v0

    return v0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFloat(Ljava/lang/String;FLcom/blankj/utilcode/util/SPUtils;)F
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # F
    .param p2, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 554
    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 555
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/SPUtils;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0

    .line 554
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFloat(Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)F
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 542
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 543
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/SPUtils;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    .line 542
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 103
    if-eqz p0, :cond_0

    .line 104
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->getInt(Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)I

    move-result v0

    return v0

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # I

    .line 114
    if-eqz p0, :cond_0

    .line 115
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->getInt(Ljava/lang/String;ILcom/blankj/utilcode/util/SPUtils;)I

    move-result v0

    return v0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInt(Ljava/lang/String;ILcom/blankj/utilcode/util/SPUtils;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # I
    .param p2, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 454
    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 455
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/SPUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 454
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInt(Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 442
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 443
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/SPUtils;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 442
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 146
    if-eqz p0, :cond_0

    .line 147
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->getLong(Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)J

    move-result-wide v0

    return-wide v0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # J

    .line 157
    if-eqz p0, :cond_0

    .line 158
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->getLong(Ljava/lang/String;JLcom/blankj/utilcode/util/SPUtils;)J

    move-result-wide v0

    return-wide v0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLong(Ljava/lang/String;JLcom/blankj/utilcode/util/SPUtils;)J
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # J
    .param p3, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 504
    if-eqz p0, :cond_1

    if-eqz p3, :cond_0

    .line 505
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/SPUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 504
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLong(Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)J
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 492
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 493
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/SPUtils;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    if-eqz p0, :cond_0

    .line 60
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->getString(Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getString(Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 389
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 390
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 70
    if-eqz p0, :cond_0

    .line 71
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->getString(Ljava/lang/String;Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Ljava/lang/String;
    .param p2, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 401
    if-eqz p0, :cond_1

    .line 403
    if-eqz p2, :cond_0

    .line 404
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 403
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStringSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 278
    if-eqz p0, :cond_0

    .line 279
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->getStringSet(Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStringSet(Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)Ljava/util/Set;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/SPUtils;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 645
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 646
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/SPUtils;->getStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 645
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 289
    .local p1, "defaultValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 291
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->getStringSet(Ljava/lang/String;Ljava/util/Set;Lcom/blankj/utilcode/util/SPUtils;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStringSet(Ljava/lang/String;Ljava/util/Set;Lcom/blankj/utilcode/util/SPUtils;)Ljava/util/Set;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/blankj/utilcode/util/SPUtils;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 657
    .local p1, "defaultValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 659
    if-eqz p2, :cond_0

    .line 660
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/SPUtils;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 659
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;F)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # F

    .line 167
    if-eqz p0, :cond_0

    .line 168
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->put(Ljava/lang/String;FLcom/blankj/utilcode/util/SPUtils;)V

    .line 169
    return-void

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;FLcom/blankj/utilcode/util/SPUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # F
    .param p2, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 515
    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 516
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;F)V

    .line 517
    return-void

    .line 515
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;FZ)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # F
    .param p2, "isCommit"    # Z

    .line 179
    if-eqz p0, :cond_0

    .line 180
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->put(Ljava/lang/String;FZLcom/blankj/utilcode/util/SPUtils;)V

    .line 181
    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;FZLcom/blankj/utilcode/util/SPUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # F
    .param p2, "isCommit"    # Z
    .param p3, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 528
    if-eqz p0, :cond_1

    .line 531
    if-eqz p3, :cond_0

    .line 532
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;FZ)V

    .line 533
    return-void

    .line 531
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;I)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # I

    .line 81
    if-eqz p0, :cond_0

    .line 82
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->put(Ljava/lang/String;ILcom/blankj/utilcode/util/SPUtils;)V

    .line 83
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;ILcom/blankj/utilcode/util/SPUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # I
    .param p2, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 415
    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 416
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;I)V

    .line 417
    return-void

    .line 415
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;IZ)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # I
    .param p2, "isCommit"    # Z

    .line 93
    if-eqz p0, :cond_0

    .line 94
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->put(Ljava/lang/String;IZLcom/blankj/utilcode/util/SPUtils;)V

    .line 95
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;IZLcom/blankj/utilcode/util/SPUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # I
    .param p2, "isCommit"    # Z
    .param p3, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 428
    if-eqz p0, :cond_1

    .line 431
    if-eqz p3, :cond_0

    .line 432
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;IZ)V

    .line 433
    return-void

    .line 431
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;J)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # J

    .line 124
    if-eqz p0, :cond_0

    .line 125
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->put(Ljava/lang/String;JLcom/blankj/utilcode/util/SPUtils;)V

    .line 126
    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;JLcom/blankj/utilcode/util/SPUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # J
    .param p3, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 465
    if-eqz p0, :cond_1

    if-eqz p3, :cond_0

    .line 466
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;J)V

    .line 467
    return-void

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;JZ)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # J
    .param p3, "isCommit"    # Z

    .line 136
    if-eqz p0, :cond_0

    .line 137
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->put(Ljava/lang/String;JZLcom/blankj/utilcode/util/SPUtils;)V

    .line 138
    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;JZLcom/blankj/utilcode/util/SPUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # J
    .param p3, "isCommit"    # Z
    .param p4, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 478
    if-eqz p0, :cond_1

    .line 481
    if-eqz p4, :cond_0

    .line 482
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;JZ)V

    .line 483
    return-void

    .line 481
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/String;

    .line 36
    if-eqz p0, :cond_0

    .line 37
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->put(Ljava/lang/String;Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)V

    .line 38
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 361
    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 362
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "isCommit"    # Z

    .line 48
    if-eqz p0, :cond_0

    .line 49
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->put(Ljava/lang/String;Ljava/lang/String;ZLcom/blankj/utilcode/util/SPUtils;)V

    .line 50
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;ZLcom/blankj/utilcode/util/SPUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "isCommit"    # Z
    .param p3, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 374
    if-eqz p0, :cond_1

    .line 377
    if-eqz p3, :cond_0

    .line 378
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 379
    return-void

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 253
    .local p1, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 254
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->put(Ljava/lang/String;Ljava/util/Set;Lcom/blankj/utilcode/util/SPUtils;)V

    .line 255
    return-void

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/util/Set;Lcom/blankj/utilcode/util/SPUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/blankj/utilcode/util/SPUtils;",
            ")V"
        }
    .end annotation

    .line 617
    .local p1, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 618
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/util/Set;)V

    .line 619
    return-void

    .line 617
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isCommit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 265
    .local p1, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 268
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->put(Ljava/lang/String;Ljava/util/Set;ZLcom/blankj/utilcode/util/SPUtils;)V

    .line 269
    return-void

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/util/Set;ZLcom/blankj/utilcode/util/SPUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isCommit"    # Z
    .param p3, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/blankj/utilcode/util/SPUtils;",
            ")V"
        }
    .end annotation

    .line 630
    .local p1, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 633
    if-eqz p3, :cond_0

    .line 634
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 635
    return-void

    .line 633
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Z

    .line 210
    if-eqz p0, :cond_0

    .line 211
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->put(Ljava/lang/String;ZLcom/blankj/utilcode/util/SPUtils;)V

    .line 212
    return-void

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;ZLcom/blankj/utilcode/util/SPUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Z
    .param p2, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 565
    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 566
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Z)V

    .line 567
    return-void

    .line 565
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;ZZ)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Z
    .param p2, "isCommit"    # Z

    .line 222
    if-eqz p0, :cond_0

    .line 223
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->put(Ljava/lang/String;ZZLcom/blankj/utilcode/util/SPUtils;)V

    .line 224
    return-void

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;ZZLcom/blankj/utilcode/util/SPUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Z
    .param p2, "isCommit"    # Z
    .param p3, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 578
    if-eqz p0, :cond_1

    .line 581
    if-eqz p3, :cond_0

    .line 582
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;ZZ)V

    .line 583
    return-void

    .line 581
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 318
    if-eqz p0, :cond_0

    .line 319
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->remove(Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)V

    .line 320
    return-void

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static remove(Ljava/lang/String;Lcom/blankj/utilcode/util/SPUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 690
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 691
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/SPUtils;->remove(Ljava/lang/String;)V

    .line 692
    return-void

    .line 690
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static remove(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isCommit"    # Z

    .line 329
    if-eqz p0, :cond_0

    .line 330
    invoke-static {}, Lcom/blankj/utilcode/util/SPStaticUtils;->getDefaultSPUtils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/SPStaticUtils;->remove(Ljava/lang/String;ZLcom/blankj/utilcode/util/SPUtils;)V

    .line 331
    return-void

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static remove(Ljava/lang/String;ZLcom/blankj/utilcode/util/SPUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isCommit"    # Z
    .param p2, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 702
    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 703
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/SPUtils;->remove(Ljava/lang/String;Z)V

    .line 704
    return-void

    .line 702
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'spUtils\' of type SPUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDefaultSPUtils(Lcom/blankj/utilcode/util/SPUtils;)V
    .locals 0
    .param p0, "spUtils"    # Lcom/blankj/utilcode/util/SPUtils;

    .line 27
    sput-object p0, Lcom/blankj/utilcode/util/SPStaticUtils;->sDefaultSPUtils:Lcom/blankj/utilcode/util/SPUtils;

    .line 28
    return-void
.end method
