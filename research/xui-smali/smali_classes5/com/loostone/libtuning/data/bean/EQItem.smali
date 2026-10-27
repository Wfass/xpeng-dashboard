.class public final Lcom/loostone/libtuning/data/bean/EQItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008r\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008r\u0010sR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R$\u0010\u000c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0004\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0004\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R$\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0004\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R$\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0004\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R$\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0004\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R$\u0010!\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\u0004\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R$\u0010$\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u0004\u001a\u0004\u0008%\u0010\u0006\"\u0004\u0008&\u0010\u0008R$\u0010\'\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u0004\u001a\u0004\u0008(\u0010\u0006\"\u0004\u0008)\u0010\u0008R$\u0010*\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u0004\u001a\u0004\u0008+\u0010\u0006\"\u0004\u0008,\u0010\u0008R$\u0010-\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010\u0004\u001a\u0004\u0008.\u0010\u0006\"\u0004\u0008/\u0010\u0008R$\u00100\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u0010\u0004\u001a\u0004\u00081\u0010\u0006\"\u0004\u00082\u0010\u0008R$\u00103\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010\u0004\u001a\u0004\u00084\u0010\u0006\"\u0004\u00085\u0010\u0008R$\u00106\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u0010\u0004\u001a\u0004\u00087\u0010\u0006\"\u0004\u00088\u0010\u0008R$\u00109\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00089\u0010\u0004\u001a\u0004\u0008:\u0010\u0006\"\u0004\u0008;\u0010\u0008R$\u0010<\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010\u0004\u001a\u0004\u0008=\u0010\u0006\"\u0004\u0008>\u0010\u0008R$\u0010?\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010\u0004\u001a\u0004\u0008@\u0010\u0006\"\u0004\u0008A\u0010\u0008R$\u0010B\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010\u0004\u001a\u0004\u0008C\u0010\u0006\"\u0004\u0008D\u0010\u0008R$\u0010E\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008E\u0010\u0004\u001a\u0004\u0008F\u0010\u0006\"\u0004\u0008G\u0010\u0008R$\u0010H\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010\u0004\u001a\u0004\u0008I\u0010\u0006\"\u0004\u0008J\u0010\u0008R$\u0010K\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008K\u0010\u0004\u001a\u0004\u0008L\u0010\u0006\"\u0004\u0008M\u0010\u0008R$\u0010N\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008N\u0010\u0004\u001a\u0004\u0008O\u0010\u0006\"\u0004\u0008P\u0010\u0008R$\u0010Q\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Q\u0010\u0004\u001a\u0004\u0008R\u0010\u0006\"\u0004\u0008S\u0010\u0008R$\u0010T\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010\u0004\u001a\u0004\u0008U\u0010\u0006\"\u0004\u0008V\u0010\u0008R$\u0010W\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008W\u0010\u0004\u001a\u0004\u0008X\u0010\u0006\"\u0004\u0008Y\u0010\u0008R$\u0010Z\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Z\u0010\u0004\u001a\u0004\u0008[\u0010\u0006\"\u0004\u0008\\\u0010\u0008R$\u0010]\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008]\u0010\u0004\u001a\u0004\u0008^\u0010\u0006\"\u0004\u0008_\u0010\u0008R$\u0010`\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008`\u0010\u0004\u001a\u0004\u0008a\u0010\u0006\"\u0004\u0008b\u0010\u0008R$\u0010c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008c\u0010\u0004\u001a\u0004\u0008d\u0010\u0006\"\u0004\u0008e\u0010\u0008R$\u0010f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008f\u0010\u0004\u001a\u0004\u0008g\u0010\u0006\"\u0004\u0008h\u0010\u0008R$\u0010i\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008i\u0010\u0004\u001a\u0004\u0008j\u0010\u0006\"\u0004\u0008k\u0010\u0008R$\u0010l\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008l\u0010\u0004\u001a\u0004\u0008m\u0010\u0006\"\u0004\u0008n\u0010\u0008R$\u0010o\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008o\u0010\u0004\u001a\u0004\u0008p\u0010\u0006\"\u0004\u0008q\u0010\u0008\u00a8\u0006t"
    }
    d2 = {
        "Lcom/loostone/libtuning/data/bean/EQItem;",
        "",
        "",
        "eq1",
        "Ljava/lang/Integer;",
        "getEq1",
        "()Ljava/lang/Integer;",
        "setEq1",
        "(Ljava/lang/Integer;)V",
        "q8",
        "getQ8",
        "setQ8",
        "type3",
        "getType3",
        "setType3",
        "q1",
        "getQ1",
        "setQ1",
        "eq3",
        "getEq3",
        "setEq3",
        "frequency9",
        "getFrequency9",
        "setFrequency9",
        "q6",
        "getQ6",
        "setQ6",
        "eq9",
        "getEq9",
        "setEq9",
        "q2",
        "getQ2",
        "setQ2",
        "eq8",
        "getEq8",
        "setEq8",
        "q7",
        "getQ7",
        "setQ7",
        "q5",
        "getQ5",
        "setQ5",
        "q4",
        "getQ4",
        "setQ4",
        "eq4",
        "getEq4",
        "setEq4",
        "eq5",
        "getEq5",
        "setEq5",
        "type1",
        "getType1",
        "setType1",
        "frequency3",
        "getFrequency3",
        "setFrequency3",
        "eq6",
        "getEq6",
        "setEq6",
        "q9",
        "getQ9",
        "setQ9",
        "type9",
        "getType9",
        "setType9",
        "type5",
        "getType5",
        "setType5",
        "eq2",
        "getEq2",
        "setEq2",
        "frequency5",
        "getFrequency5",
        "setFrequency5",
        "type4",
        "getType4",
        "setType4",
        "type2",
        "getType2",
        "setType2",
        "q3",
        "getQ3",
        "setQ3",
        "eq7",
        "getEq7",
        "setEq7",
        "frequency1",
        "getFrequency1",
        "setFrequency1",
        "frequency6",
        "getFrequency6",
        "setFrequency6",
        "type6",
        "getType6",
        "setType6",
        "type7",
        "getType7",
        "setType7",
        "frequency2",
        "getFrequency2",
        "setFrequency2",
        "frequency7",
        "getFrequency7",
        "setFrequency7",
        "frequency4",
        "getFrequency4",
        "setFrequency4",
        "frequency8",
        "getFrequency8",
        "setFrequency8",
        "type8",
        "getType8",
        "setType8",
        "<init>",
        "()V",
        "libTuning_CAR_XIAOPENGRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private eq1:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private eq2:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private eq3:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private eq4:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private eq5:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private eq6:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private eq7:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private eq8:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private eq9:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private frequency1:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private frequency2:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private frequency3:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private frequency4:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private frequency5:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private frequency6:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private frequency7:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private frequency8:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private frequency9:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q1:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q2:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q3:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q4:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q5:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q6:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q7:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q8:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q9:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type1:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type2:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type3:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type4:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type5:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type6:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type7:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type8:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type9:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEq1()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->eq1:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEq2()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->eq2:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEq3()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->eq3:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEq4()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->eq4:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEq5()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->eq5:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEq6()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->eq6:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEq7()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->eq7:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEq8()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->eq8:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEq9()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->eq9:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getFrequency1()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->frequency1:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getFrequency2()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->frequency2:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getFrequency3()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->frequency3:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getFrequency4()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->frequency4:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getFrequency5()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->frequency5:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getFrequency6()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->frequency6:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getFrequency7()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->frequency7:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getFrequency8()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->frequency8:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getFrequency9()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->frequency9:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getQ1()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->q1:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getQ2()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->q2:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getQ3()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->q3:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getQ4()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->q4:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getQ5()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->q5:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getQ6()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->q6:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getQ7()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->q7:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getQ8()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->q8:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getQ9()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->q9:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getType1()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->type1:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getType2()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->type2:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getType3()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->type3:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getType4()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->type4:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getType5()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->type5:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getType6()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->type6:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getType7()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->type7:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getType8()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->type8:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getType9()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/bean/EQItem;->type9:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setEq1(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->eq1:Ljava/lang/Integer;

    return-void
.end method

.method public final setEq2(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->eq2:Ljava/lang/Integer;

    return-void
.end method

.method public final setEq3(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->eq3:Ljava/lang/Integer;

    return-void
.end method

.method public final setEq4(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->eq4:Ljava/lang/Integer;

    return-void
.end method

.method public final setEq5(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->eq5:Ljava/lang/Integer;

    return-void
.end method

.method public final setEq6(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->eq6:Ljava/lang/Integer;

    return-void
.end method

.method public final setEq7(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->eq7:Ljava/lang/Integer;

    return-void
.end method

.method public final setEq8(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->eq8:Ljava/lang/Integer;

    return-void
.end method

.method public final setEq9(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->eq9:Ljava/lang/Integer;

    return-void
.end method

.method public final setFrequency1(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->frequency1:Ljava/lang/Integer;

    return-void
.end method

.method public final setFrequency2(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->frequency2:Ljava/lang/Integer;

    return-void
.end method

.method public final setFrequency3(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->frequency3:Ljava/lang/Integer;

    return-void
.end method

.method public final setFrequency4(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->frequency4:Ljava/lang/Integer;

    return-void
.end method

.method public final setFrequency5(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->frequency5:Ljava/lang/Integer;

    return-void
.end method

.method public final setFrequency6(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->frequency6:Ljava/lang/Integer;

    return-void
.end method

.method public final setFrequency7(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->frequency7:Ljava/lang/Integer;

    return-void
.end method

.method public final setFrequency8(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->frequency8:Ljava/lang/Integer;

    return-void
.end method

.method public final setFrequency9(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->frequency9:Ljava/lang/Integer;

    return-void
.end method

.method public final setQ1(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->q1:Ljava/lang/Integer;

    return-void
.end method

.method public final setQ2(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->q2:Ljava/lang/Integer;

    return-void
.end method

.method public final setQ3(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->q3:Ljava/lang/Integer;

    return-void
.end method

.method public final setQ4(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->q4:Ljava/lang/Integer;

    return-void
.end method

.method public final setQ5(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->q5:Ljava/lang/Integer;

    return-void
.end method

.method public final setQ6(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->q6:Ljava/lang/Integer;

    return-void
.end method

.method public final setQ7(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->q7:Ljava/lang/Integer;

    return-void
.end method

.method public final setQ8(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->q8:Ljava/lang/Integer;

    return-void
.end method

.method public final setQ9(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->q9:Ljava/lang/Integer;

    return-void
.end method

.method public final setType1(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->type1:Ljava/lang/Integer;

    return-void
.end method

.method public final setType2(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->type2:Ljava/lang/Integer;

    return-void
.end method

.method public final setType3(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->type3:Ljava/lang/Integer;

    return-void
.end method

.method public final setType4(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->type4:Ljava/lang/Integer;

    return-void
.end method

.method public final setType5(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->type5:Ljava/lang/Integer;

    return-void
.end method

.method public final setType6(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->type6:Ljava/lang/Integer;

    return-void
.end method

.method public final setType7(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->type7:Ljava/lang/Integer;

    return-void
.end method

.method public final setType8(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->type8:Ljava/lang/Integer;

    return-void
.end method

.method public final setType9(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/bean/EQItem;->type9:Ljava/lang/Integer;

    return-void
.end method
