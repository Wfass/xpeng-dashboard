.class Lcom/xiaopeng/devtools/system/service/LogUploadService$1;
.super Ljava/lang/Object;
.source "LogUploadService.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/system/service/LogUploadService;->D(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Bm:Lcom/xiaopeng/devtools/system/service/LogUploadService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/system/service/LogUploadService;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/LogUploadService$1;->Bm:Lcom/xiaopeng/devtools/system/service/LogUploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V
    .locals 0

    .line 163
    const-string p1, "LogUploadService"

    const-string p2, "uploadLog onFailure"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/LogUploadService$1;->Bm:Lcom/xiaopeng/devtools/system/service/LogUploadService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/system/service/LogUploadService;->a(Lcom/xiaopeng/devtools/system/service/LogUploadService;Z)V

    .line 165
    return-void
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 151
    const-string p1, "LogUploadService"

    const-string p2, "uploadLog onStart"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 157
    const-string p1, "LogUploadService"

    const-string p2, "uploadLog onSuccess"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/LogUploadService$1;->Bm:Lcom/xiaopeng/devtools/system/service/LogUploadService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/system/service/LogUploadService;->a(Lcom/xiaopeng/devtools/system/service/LogUploadService;Z)V

    .line 159
    return-void
.end method
