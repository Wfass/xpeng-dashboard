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

    .line 31
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;->volume:D

    .line 35
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;-><init>()V

    .line 22
    .local v0, "volume":Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    .local v1, "object":Lorg/json/JSONObject;
    const-string v2, "volume"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;->volume:D
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v1    # "object":Lorg/json/JSONObject;
    goto :goto_0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 27
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 39
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;->volume:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 40
    return-void
.end method
