.class Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;
.super Ljava/lang/Object;
.source "AmbientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/ambient/AmbientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmbientMessage"
.end annotation


# instance fields
.field private data:I

.field private sdata:Ljava/lang/String;

.field private sdata2:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/ambient/AmbientManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->this$0:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->sdata:Ljava/lang/String;

    .line 167
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->sdata2:Ljava/lang/String;

    .line 168
    iput p4, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->data:I

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->sdata:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)I
    .locals 0

    .line 161
    iget p0, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->data:I

    return p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->sdata2:Ljava/lang/String;

    return-object p0
.end method
