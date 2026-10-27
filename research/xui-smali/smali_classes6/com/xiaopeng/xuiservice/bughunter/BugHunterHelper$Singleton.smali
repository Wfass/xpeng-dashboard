.class Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$Singleton;
.super Ljava/lang/Object;
.source "BugHunterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static INSTANCE:Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;-><init>(Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$Singleton;->INSTANCE:Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$Singleton;->INSTANCE:Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;

    return-object v0
.end method
