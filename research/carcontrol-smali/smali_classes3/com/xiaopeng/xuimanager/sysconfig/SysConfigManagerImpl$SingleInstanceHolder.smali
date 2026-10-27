.class final Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SingleInstanceHolder;
.super Ljava/lang/Object;
.source "SysConfigManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleInstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;-><init>(Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SingleInstanceHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SingleInstanceHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;

    return-object v0
.end method
