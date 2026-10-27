.class public Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$Detatched;
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
    name = "Detatched"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$Detatched;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 564
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$Detatched$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$Detatched$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$Detatched;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    return-void
.end method
