.class public Lcom/xiaopeng/musicradio/bean/common/LeftSelect;
.super Ljava/lang/Object;
.source "LeftSelect.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private isSelected:Z

.field private isShow:Z

.field private name:Ljava/lang/String;

.field private res:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->isShow:Z

    .line 9
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->res:I

    .line 10
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->isShow:Z

    .line 14
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->res:I

    .line 15
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->name:Ljava/lang/String;

    .line 16
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->isShow:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRes()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->res:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->isSelected:Z

    return v0
.end method

.method public isShow()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->isShow:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->name:Ljava/lang/String;

    return-void
.end method

.method public setRes(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->res:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->isSelected:Z

    return-void
.end method

.method public setShow(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->isShow:Z

    return-void
.end method
