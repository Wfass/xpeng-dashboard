.class public Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SecureSimpleUploadTask;
.super Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;
.source "SecureSimpleUploadTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetChannel-BaseOssTask-SecureSimpleUploadTask"


# instance fields
.field private final mPolicyType:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)V

    .line 19
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SecureSimpleUploadTask;->mPolicyType:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SecureSimpleUploadTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;
    .locals 0

    .line 29
    invoke-super {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    return-object p0
.end method

.method public performRealTask()V
    .locals 3

    .line 24
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SecureSimpleUploadTask;->mPolicyType:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$FutureTaskCallback;

    invoke-direct {v2, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$FutureTaskCallback;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->getTokenWithCallback(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;)V

    return-void
.end method
