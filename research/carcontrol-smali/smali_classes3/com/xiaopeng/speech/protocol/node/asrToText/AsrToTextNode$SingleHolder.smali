.class Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$SingleHolder;
.super Ljava/lang/Object;
.source "AsrToTextNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$SingleHolder;->INSTANCE:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
