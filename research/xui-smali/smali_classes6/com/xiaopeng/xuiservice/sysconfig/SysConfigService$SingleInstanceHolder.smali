.class Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$SingleInstanceHolder;
.super Ljava/lang/Object;
.source "SysConfigService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstanceHolder"
.end annotation


# static fields
.field static INSTANCE:Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;-><init>(Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$SingleInstanceHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
