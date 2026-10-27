.class Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeManagerHolder;
.super Ljava/lang/Object;
.source "KaraokeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KaraokeManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 153
    new-instance v0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;-><init>(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeManagerHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600()Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;
    .locals 1

    .line 152
    sget-object v0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeManagerHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    return-object v0
.end method
