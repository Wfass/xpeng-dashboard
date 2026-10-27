.class public Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;
.super Ljava/lang/Object;
.source "AsrResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public filePath:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;->text:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;
    .locals 2

    .line 31
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;-><init>()V

    .line 33
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "token"

    .line 34
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;->token:Ljava/lang/String;

    const-string p0, "text"

    .line 35
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;->text:Ljava/lang/String;

    const-string p0, "filePath"

    .line 36
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;->filePath:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
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
    .locals 0

    .line 52
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
