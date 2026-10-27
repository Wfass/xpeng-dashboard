.class Lcom/xiaopeng/devtools/system/service/ZipFileService$2;
.super Ljava/lang/Object;
.source "ZipFileService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/system/service/ZipFileService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Bz:Lcom/xiaopeng/devtools/system/service/ZipFileService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/system/service/ZipFileService;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/ZipFileService$2;->Bz:Lcom/xiaopeng/devtools/system/service/ZipFileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 95
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000df

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    return-void
.end method
