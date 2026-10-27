.class Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer$ApplistManagerServerHolder;
.super Ljava/lang/Object;
.source "ApplistManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApplistManagerServerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer$ApplistManagerServerHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;
    .locals 1

    .line 101
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer$ApplistManagerServerHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    return-object v0
.end method
