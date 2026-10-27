.class Landroid/pso/XpPso$PSOencKeybinData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pso/XpPso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PSOencKeybinData"
.end annotation


# instance fields
.field BINHeaderDubExVer:I

.field BINType:I

.field EncData:[B

.field SignData:[B

.field Version:I

.field result:I

.field final synthetic this$0:Landroid/pso/XpPso;


# direct methods
.method private constructor <init>(Landroid/pso/XpPso;)V
    .locals 0

    iput-object p1, p0, Landroid/pso/XpPso$PSOencKeybinData;->this$0:Landroid/pso/XpPso;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
