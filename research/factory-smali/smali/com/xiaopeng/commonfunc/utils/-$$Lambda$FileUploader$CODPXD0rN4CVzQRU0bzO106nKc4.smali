.class public final synthetic Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$CODPXD0rN4CVzQRU0bzO106nKc4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:[Ljava/lang/String;

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:I

.field private final synthetic f$5:Landroid/app/Application;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/commonfunc/utils/FileUploader;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$CODPXD0rN4CVzQRU0bzO106nKc4;->f$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;

    iput-object p2, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$CODPXD0rN4CVzQRU0bzO106nKc4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$CODPXD0rN4CVzQRU0bzO106nKc4;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$CODPXD0rN4CVzQRU0bzO106nKc4;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$CODPXD0rN4CVzQRU0bzO106nKc4;->f$4:I

    iput-object p6, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$CODPXD0rN4CVzQRU0bzO106nKc4;->f$5:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$CODPXD0rN4CVzQRU0bzO106nKc4;->f$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$CODPXD0rN4CVzQRU0bzO106nKc4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$CODPXD0rN4CVzQRU0bzO106nKc4;->f$2:[Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$CODPXD0rN4CVzQRU0bzO106nKc4;->f$3:Ljava/lang/String;

    iget v4, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$CODPXD0rN4CVzQRU0bzO106nKc4;->f$4:I

    iget-object v5, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$CODPXD0rN4CVzQRU0bzO106nKc4;->f$5:Landroid/app/Application;

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/commonfunc/utils/FileUploader;->lambda$uploadFile2Cloud$4(Lcom/xiaopeng/commonfunc/utils/FileUploader;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/app/Application;)V

    return-void
.end method
