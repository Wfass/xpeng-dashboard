.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$iMnH_35eFEBLoPR5IzFeiOquZTA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$iMnH_35eFEBLoPR5IzFeiOquZTA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$iMnH_35eFEBLoPR5IzFeiOquZTA;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$iMnH_35eFEBLoPR5IzFeiOquZTA;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$iMnH_35eFEBLoPR5IzFeiOquZTA;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$iMnH_35eFEBLoPR5IzFeiOquZTA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->lambda$iMnH_35eFEBLoPR5IzFeiOquZTA(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
