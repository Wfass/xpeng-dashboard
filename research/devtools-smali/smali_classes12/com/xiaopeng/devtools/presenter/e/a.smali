.class public Lcom/xiaopeng/devtools/presenter/e/a;
.super Ljava/lang/Object;
.source "FmPerformancePresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/e/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getFrequency()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {}, Lcom/xiaopeng/devtools/model/f/a;->hf()Lcom/xiaopeng/devtools/model/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/f/a;->getFrequency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hg()Ljava/lang/String;
    .locals 1

    .line 22
    invoke-static {}, Lcom/xiaopeng/devtools/model/f/a;->hf()Lcom/xiaopeng/devtools/model/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/f/a;->hg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hh()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-static {}, Lcom/xiaopeng/devtools/model/f/a;->hf()Lcom/xiaopeng/devtools/model/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/f/a;->hh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
