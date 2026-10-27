.class public Lcom/xiaopeng/factory/utils/SharedUtils;
.super Ljava/lang/Object;
.source "SharedUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/factory/utils/SharedUtils$SingleSharedUtils;
    }
.end annotation


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "x_s_p"

    .line 18
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/utils/SharedUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/factory/utils/SharedUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/factory/utils/SharedUtils$1;

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/factory/utils/SharedUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/factory/utils/SharedUtils;
    .locals 1

    .line 22
    invoke-static {}, Lcom/xiaopeng/factory/utils/SharedUtils$SingleSharedUtils;->access$000()Lcom/xiaopeng/factory/utils/SharedUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/factory/utils/SharedUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/factory/utils/SharedUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/factory/utils/SharedUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getmSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/factory/utils/SharedUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/factory/utils/SharedUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/factory/utils/SharedUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    return-void
.end method
