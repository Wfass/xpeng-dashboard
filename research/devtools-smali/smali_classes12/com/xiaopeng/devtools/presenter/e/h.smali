.class public Lcom/xiaopeng/devtools/presenter/e/h;
.super Ljava/lang/Object;
.source "WifiBtPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/e/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBtName()Ljava/lang/String;
    .locals 1

    .line 37
    invoke-static {}, Lcom/xiaopeng/devtools/model/f/d;->hu()Lcom/xiaopeng/devtools/model/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/f/d;->hA()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hB()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-static {}, Lcom/xiaopeng/devtools/model/f/d;->hu()Lcom/xiaopeng/devtools/model/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/f/d;->hB()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hC()V
    .locals 1

    .line 47
    invoke-static {}, Lcom/xiaopeng/devtools/model/f/d;->hu()Lcom/xiaopeng/devtools/model/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/f/d;->hC()V

    .line 48
    return-void
.end method

.method public hv()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-static {}, Lcom/xiaopeng/devtools/model/f/d;->hu()Lcom/xiaopeng/devtools/model/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/f/d;->hv()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hx()Ljava/lang/String;
    .locals 1

    .line 52
    invoke-static {}, Lcom/xiaopeng/devtools/model/f/d;->hu()Lcom/xiaopeng/devtools/model/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/f/d;->hx()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hy()Ljava/lang/String;
    .locals 1

    .line 42
    invoke-static {}, Lcom/xiaopeng/devtools/model/f/d;->hu()Lcom/xiaopeng/devtools/model/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/f/d;->hy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jV()Ljava/lang/String;
    .locals 2

    .line 18
    invoke-static {}, Lcom/xiaopeng/devtools/model/f/d;->hu()Lcom/xiaopeng/devtools/model/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/f/d;->getWifiState()I

    move-result v0

    .line 19
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100460

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10045f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 19
    :goto_0
    return-object v0
.end method

.method public jW()Ljava/lang/String;
    .locals 2

    .line 25
    invoke-static {}, Lcom/xiaopeng/devtools/model/f/d;->hu()Lcom/xiaopeng/devtools/model/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/f/d;->hz()I

    move-result v0

    .line 26
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100460

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10045f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_0
    return-object v0
.end method

.method public jX()Ljava/lang/String;
    .locals 1

    .line 57
    invoke-static {}, Lcom/xiaopeng/devtools/model/f/d;->hu()Lcom/xiaopeng/devtools/model/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/f/d;->hw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
