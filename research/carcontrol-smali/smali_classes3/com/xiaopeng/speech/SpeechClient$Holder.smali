.class Lcom/xiaopeng/speech/SpeechClient$Holder;
.super Ljava/lang/Object;
.source "SpeechClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/SpeechClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final Instance:Lcom/xiaopeng/speech/SpeechClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/xiaopeng/speech/SpeechClient;

    invoke-direct {v0}, Lcom/xiaopeng/speech/SpeechClient;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/SpeechClient$Holder;->Instance:Lcom/xiaopeng/speech/SpeechClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/speech/SpeechClient;
    .locals 1

    .line 60
    sget-object v0, Lcom/xiaopeng/speech/SpeechClient$Holder;->Instance:Lcom/xiaopeng/speech/SpeechClient;

    return-object v0
.end method
