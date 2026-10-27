.class public Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;
.super Ljava/lang/Object;
.source "Volume.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volume:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/record/bean/Volume$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/record/bean/Volume$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;->volume:D

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;
    .locals 3

    .line 20
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;-><init>()V

    .line 22
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "volume"

    .line 23
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;->volume:D
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;->volume:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
