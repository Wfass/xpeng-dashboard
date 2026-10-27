.class Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$SingletonHolder;
.super Ljava/lang/Object;
.source "MusicRecognizeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 139
    new-instance v0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;-><init>(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600()Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;
    .locals 1

    .line 138
    sget-object v0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;

    return-object v0
.end method
