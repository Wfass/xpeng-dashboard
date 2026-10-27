.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreatorASM$GlFRewQGBx-DwK9datXBkrl7wLA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreatorASM$GlFRewQGBx-DwK9datXBkrl7wLA;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreatorASM$GlFRewQGBx-DwK9datXBkrl7wLA;->f$0:Ljava/lang/Class;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreatorASM;->lambda$createValueConsumer0$5(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
