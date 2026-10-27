.class public Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean;
.super Ljava/lang/Object;
.source "MusicXingHaiListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XHDataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean$XingHaiBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean$XingHaiBean;",
            ">;"
        }
    .end annotation
.end field

.field private mTotal:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean$XingHaiBean;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean;->mTotal:I

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean$XingHaiBean;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean;->mList:Ljava/util/List;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean;->mTotal:I

    return-void
.end method
