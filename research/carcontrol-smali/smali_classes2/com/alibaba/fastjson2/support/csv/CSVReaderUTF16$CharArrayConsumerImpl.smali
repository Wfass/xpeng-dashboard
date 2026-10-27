.class Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16$CharArrayConsumerImpl;
.super Ljava/lang/Object;
.source "CSVReaderUTF16.java"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CharArrayConsumerImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;"
    }
.end annotation


# instance fields
.field final consumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 705
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16$CharArrayConsumerImpl;->this$0:Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    iput-object p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16$CharArrayConsumerImpl;->consumer:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public accept(II[CII)V
    .locals 1

    .line 718
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16$CharArrayConsumerImpl;->this$0:Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    invoke-static {p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->access$200(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;)[Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    array-length p1, p1

    if-ge p2, p1, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 722
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16$CharArrayConsumerImpl;->this$0:Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    invoke-static {p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->access$300(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;)[Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    aget-object p1, p1, p2

    .line 723
    iget-object p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16$CharArrayConsumerImpl;->this$0:Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    iget-object v0, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {p2, p3, p4, p5, v0}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->readValue([CIILjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 724
    iget-object p3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16$CharArrayConsumerImpl;->object:Ljava/lang/Object;

    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final afterRow(I)V
    .locals 1

    .line 729
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16$CharArrayConsumerImpl;->consumer:Ljava/util/function/Consumer;

    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16$CharArrayConsumerImpl;->object:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 730
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16$CharArrayConsumerImpl;->object:Ljava/lang/Object;

    return-void
.end method

.method public final beforeRow(I)V
    .locals 0

    .line 711
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16$CharArrayConsumerImpl;->this$0:Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    invoke-static {p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->access$000(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;)Ljava/util/function/Supplier;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 712
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16$CharArrayConsumerImpl;->this$0:Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    invoke-static {p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->access$100(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;)Ljava/util/function/Supplier;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16$CharArrayConsumerImpl;->object:Ljava/lang/Object;

    :cond_0
    return-void
.end method
