.class public Lcom/xiaopeng/commonfunc/bean/factorytest/KeyItem;
.super Ljava/lang/Object;
.source "KeyItem.java"


# instance fields
.field private final mIsNeedResultButton:Z

.field private mKeyName:Ljava/lang/String;

.field private mKeyResult:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/KeyItem;->mKeyName:Ljava/lang/String;

    .line 11
    iput-boolean p2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/KeyItem;->mKeyResult:Z

    .line 12
    iput-boolean p3, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/KeyItem;->mIsNeedResultButton:Z

    .line 13
    return-void
.end method


# virtual methods
.method public getKeyName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/KeyItem;->mKeyName:Ljava/lang/String;

    return-object v0
.end method

.method public isKeyPass()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/KeyItem;->mKeyResult:Z

    return v0
.end method

.method public isNeedResultButton()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/KeyItem;->mIsNeedResultButton:Z

    return v0
.end method

.method public setKeyName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/KeyItem;->mKeyName:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setKeyResult(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/KeyItem;->mKeyResult:Z

    .line 29
    return-void
.end method
