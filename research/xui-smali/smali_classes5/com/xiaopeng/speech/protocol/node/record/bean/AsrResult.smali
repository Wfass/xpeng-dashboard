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

    .line 44
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;->text:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;-><init>()V

    .line 33
    .local v0, "asrResult":Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, "object":Lorg/json/JSONObject;
    const-string v2, "token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;->token:Ljava/lang/String;

    .line 35
    const-string v2, "text"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;->text:Ljava/lang/String;

    .line 36
    const-string v2, "filePath"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;->filePath:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v1    # "object":Lorg/json/JSONObject;
    goto :goto_0

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 40
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return-void
.end method
