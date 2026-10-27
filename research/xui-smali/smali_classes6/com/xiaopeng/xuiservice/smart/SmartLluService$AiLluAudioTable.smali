.class Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;
.super Ljava/lang/Object;
.source "SmartLluService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLluService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AiLluAudioTable"
.end annotation


# instance fields
.field private mNoteAudioTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V
    .locals 0

    .line 1853
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1847
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;->mNoteAudioTable:Landroid/util/SparseArray;

    .line 1854
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;->initNoteAudioTable()V

    .line 1855
    return-void
.end method

.method static synthetic access$2500(Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;I)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;
    .param p1, "x1"    # I

    .line 1846
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;->getNoteAudioId(I)I

    move-result v0

    return v0
.end method

.method private getNoteAudioId(I)I
    .locals 1
    .param p1, "index"    # I

    .line 1850
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;->mNoteAudioTable:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private initNoteAudioTable()V
    .locals 3

    .line 1858
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;->mNoteAudioTable:Landroid/util/SparseArray;

    const/high16 v1, 0x7f0d0000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1859
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;->mNoteAudioTable:Landroid/util/SparseArray;

    const v1, 0x7f0d0005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1860
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;->mNoteAudioTable:Landroid/util/SparseArray;

    const v1, 0x7f0d0006

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1861
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;->mNoteAudioTable:Landroid/util/SparseArray;

    const v1, 0x7f0d0007

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1862
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;->mNoteAudioTable:Landroid/util/SparseArray;

    const v1, 0x7f0d0008

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1863
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;->mNoteAudioTable:Landroid/util/SparseArray;

    const v1, 0x7f0d0009

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1864
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;->mNoteAudioTable:Landroid/util/SparseArray;

    const v1, 0x7f0d000a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1865
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;->mNoteAudioTable:Landroid/util/SparseArray;

    const v1, 0x7f0d000b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1866
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;->mNoteAudioTable:Landroid/util/SparseArray;

    const v1, 0x7f0d000c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1867
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;->mNoteAudioTable:Landroid/util/SparseArray;

    const v1, 0x7f0d0001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1868
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;->mNoteAudioTable:Landroid/util/SparseArray;

    const v1, 0x7f0d0002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1869
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;->mNoteAudioTable:Landroid/util/SparseArray;

    const v1, 0x7f0d0003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1870
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;->mNoteAudioTable:Landroid/util/SparseArray;

    const v1, 0x7f0d0004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1871
    return-void
.end method
