.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$a;
.super Ljava/lang/Object;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic Os:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;

.field private final Ot:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$a;->Os:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$a;->Ot:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$1;)V
    .locals 0

    .line 528
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$a;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;)V

    return-void
.end method


# virtual methods
.method n(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$a;->Ot:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 536
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$a;->Ot:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 541
    if-nez v0, :cond_0

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 543
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$a;->Ot:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    return-void
.end method
