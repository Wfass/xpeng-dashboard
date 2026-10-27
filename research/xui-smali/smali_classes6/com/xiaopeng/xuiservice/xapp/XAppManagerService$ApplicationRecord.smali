.class public Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;
.super Ljava/lang/Object;
.source "XAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationRecord"
.end annotation


# instance fields
.field private duration:J

.field private finishTime:J

.field public mFlag:I

.field public mIsFullscreen:Z

.field public mIsMiniProgram:Z

.field public mIsPanel:Z

.field private mName:Landroid/content/ComponentName;

.field public mType:I

.field public miniprogId:I

.field private pkgName:Ljava/lang/String;

.field private startTime:J

.field public token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 956
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->startTime:J

    .line 957
    return-void
.end method

.method static synthetic access$402(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;
    .param p1, "x1"    # Ljava/lang/String;

    .line 942
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->pkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;

    .line 942
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->mName:Landroid/content/ComponentName;

    return-object v0
.end method


# virtual methods
.method public getName()Landroid/content/ComponentName;
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->mName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 966
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 962
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->mName:Landroid/content/ComponentName;

    .line 963
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->pkgName:Ljava/lang/String;

    .line 964
    return-void
.end method
