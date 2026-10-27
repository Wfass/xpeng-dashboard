.class public final synthetic Lcom/alibaba/fastjson2/support/csv/-$$Lambda$CSVReaderUTF8$hkC5VbdK1dQSVf6BSQBYgpJQzho;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;


# instance fields
.field public final synthetic f$0:Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/-$$Lambda$CSVReaderUTF8$hkC5VbdK1dQSVf6BSQBYgpJQzho;->f$0:Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;

    return-void
.end method


# virtual methods
.method public final accept(II[BIILjava/nio/charset/Charset;)V
    .locals 7

    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/-$$Lambda$CSVReaderUTF8$hkC5VbdK1dQSVf6BSQBYgpJQzho;->f$0:Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->lambda$statAll$1$CSVReaderUTF8(II[BIILjava/nio/charset/Charset;)V

    return-void
.end method
