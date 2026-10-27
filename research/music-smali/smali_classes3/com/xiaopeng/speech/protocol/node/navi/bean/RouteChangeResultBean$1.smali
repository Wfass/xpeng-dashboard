.class final Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean$1;
.super Ljava/lang/Object;
.source "RouteChangeResultBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;
    .locals 1

    .line 136
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;

    invoke-direct {v0, p1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;
    .locals 0

    .line 141
    new-array p1, p1, [Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean$1;->a(Landroid/os/Parcel;)Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean$1;->a(I)[Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;

    move-result-object p1

    return-object p1
.end method
