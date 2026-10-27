.class public Lcom/xiaopeng/commonfunc/utils/SharedUtils;
.super Ljava/lang/Object;
.source "SharedUtils.java"


# static fields
.field private static sSharedUtils:Lcom/xiaopeng/commonfunc/utils/SharedUtils;


# instance fields
.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "x_s_p"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/utils/SharedUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 19
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/commonfunc/utils/SharedUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 22
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/SharedUtils;->sSharedUtils:Lcom/xiaopeng/commonfunc/utils/SharedUtils;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/SharedUtils;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/utils/SharedUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/SharedUtils;->sSharedUtils:Lcom/xiaopeng/commonfunc/utils/SharedUtils;

    .line 25
    :cond_0
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/SharedUtils;->sSharedUtils:Lcom/xiaopeng/commonfunc/utils/SharedUtils;

    return-object v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/SharedUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/SharedUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/SharedUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getmSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/SharedUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/SharedUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/SharedUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    return-void
.end method
