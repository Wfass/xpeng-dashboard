.class Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;
.super Ljava/util/HashMap;
.source "ATLv2Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 93
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 95
    const-string v0, "effect_stable_effect_new"

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "{\"name\":\"run_stable\",\"count\":-1,\"packets\":[{\"groups\":[3],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":3000}]}"

    const-string v3, "-1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "effect_gentle_breathing"

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "{\"name\":\"run_breath\",\"count\":-1,\"packets\":[{\"groups\":[3],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":3000},{\"groups\":[3],\"colors\":[1],\"bright\":5,\"fade\":3000,\"period\":3000}]}"

    const-string v3, "2"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "effect_follow_speed"

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "{\"name\":\"run_speed\",\"count\":-1,\"packets\":[{\"groups\":[3],\"colors\":[1],\"bright\":-1,\"fade\":3000,\"period\":1000}]}"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "effect_music"

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "{\"name\":\"run_music\",\"count\":-1,\"hasRhythm\":true,\"packets\":[{\"groups\":[3],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "effect_flashing_script_effect"

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "{\"name\":\"run_flash\",\"count\":-1,\"packets\":[{\"groups\":[3],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":500},{\"groups\":[3],\"colors\":[1],\"bright\":5,\"fade\":3000,\"period\":500}]}"

    const-string v3, "-1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "effect_turn_off"

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "{\"name\":\"run_turnoff\",\"count\":1,\"packets\":[{\"groups\":[0],\"colors\":[0],\"bright\":0,\"fade\":0,\"period\":1000}]}"

    const-string v3, "0"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "effect_gradient_light"

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "{\"name\":\"run_gradient\",\"count\":1,\"packets\":[{\"groups\":[3],\"colors\":[1],\"bright\":5,\"fade\":3000,\"period\":1000},{\"groups\":[3],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

    const-string v3, "2"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "effect_mystery"

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "{\"name\":\"run_mystery\",\"count\":-1,\"packets\":[{\"groups\":[101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119],\"colors\":[3],\"bright\":100,\"fade\":3000,\"period\":500}]}"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "effect_multi_mystery"

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "{\"name\":\"run_mutimystery\",\"count\":-1,\"packets\":[{\"groups\":[3],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000},{\"groups\":[111, 112, 113, 115, 116],\"colors\":[1],\"bright\":100,\"fade\":150,\"period\":1000}]}"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "effect_ambilight"

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "{\"name\":\"run_ambient\",\"count\":-1,\"packets\":[{\"groups\":[2, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24],\"colors\":[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

    const-string v3, "0"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "effect_main"

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "{\"name\":\"run_main\",\"count\":1,\"packets\":[{\"groups\":[37],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "effect_front"

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "{\"name\":\"run_front\",\"count\":1,\"packets\":[{\"groups\":[38],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "effect_left"

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "{\"name\":\"run_left\",\"count\":1,\"packets\":[{\"groups\":[39],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "effect_right"

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "{\"name\":\"run_right\",\"count\":1,\"packets\":[{\"groups\":[40],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "effect_left_top"

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "{\"name\":\"run_lefttop\",\"count\":1,\"packets\":[{\"groups\":[41],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "effect_right_top"

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "{\"name\":\"run_righttop\",\"count\":1,\"packets\":[{\"groups\":[42],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "effect_music_rhythm_left_right"

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "{\"name\":\"run_music2\",\"count\":-1,\"hasRhythm\":true,\"packets\":[{\"groups\":[43],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method
