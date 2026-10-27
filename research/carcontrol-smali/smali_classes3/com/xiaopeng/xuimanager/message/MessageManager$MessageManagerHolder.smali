.class Lcom/xiaopeng/xuimanager/message/MessageManager$MessageManagerHolder;
.super Ljava/lang/Object;
.source "MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/message/MessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/message/MessageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/xiaopeng/xuimanager/message/MessageManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/message/MessageManager;-><init>(Lcom/xiaopeng/xuimanager/message/MessageManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/message/MessageManager$MessageManagerHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/message/MessageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuimanager/message/MessageManager;
    .locals 1

    .line 50
    sget-object v0, Lcom/xiaopeng/xuimanager/message/MessageManager$MessageManagerHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/message/MessageManager;

    return-object v0
.end method
