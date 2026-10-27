.class public Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$LoadState;
.super Ljava/lang/Object;
.source "CommonEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$LoadState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public currentState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 493
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$LoadState$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$LoadState$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$LoadState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 485
    iput v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$LoadState;->currentState:I

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$LoadState;->currentState:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 529
    iget p2, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$LoadState;->currentState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
