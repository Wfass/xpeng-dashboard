.class public Lcom/xiaopeng/commonfunc/bean/factorytest/ItemResult;
.super Ljava/lang/Object;
.source "ItemResult.java"


# instance fields
.field private mIsSucceed:Z

.field private mItem:Ljava/lang/String;

.field private mLog:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "isSucceed"    # Z
    .param p3, "log"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ItemResult;->mItem:Ljava/lang/String;

    .line 17
    iput-boolean p2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ItemResult;->mIsSucceed:Z

    .line 18
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ItemResult;->mLog:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getItem()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ItemResult;->mItem:Ljava/lang/String;

    return-object v0
.end method

.method public getLog()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ItemResult;->mLog:Ljava/lang/String;

    return-object v0
.end method

.method public isSucceed()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ItemResult;->mIsSucceed:Z

    return v0
.end method

.method public setItem(Ljava/lang/String;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ItemResult;->mItem:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ItemResult;->mLog:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setSucceed(Z)V
    .locals 0
    .param p1, "succeed"    # Z

    .line 34
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ItemResult;->mIsSucceed:Z

    .line 35
    return-void
.end method
