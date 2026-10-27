.class Lcom/xiaopeng/xuimanager/applist/ApplistManager$ApplistManagerHolder;
.super Ljava/lang/Object;
.source "ApplistManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/applist/ApplistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApplistManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/applist/ApplistManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/xiaopeng/xuimanager/applist/ApplistManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/applist/ApplistManager;-><init>(Lcom/xiaopeng/xuimanager/applist/ApplistManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/applist/ApplistManager$ApplistManagerHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/applist/ApplistManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/applist/ApplistManager;
    .locals 1

    .line 38
    sget-object v0, Lcom/xiaopeng/xuimanager/applist/ApplistManager$ApplistManagerHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/applist/ApplistManager;

    return-object v0
.end method
