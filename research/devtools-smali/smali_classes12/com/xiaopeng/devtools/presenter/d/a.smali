.class public Lcom/xiaopeng/devtools/presenter/d/a;
.super Ljava/lang/Object;
.source "NaviPresenter.java"


# static fields
.field public static final yA:Ljava/lang/String;

.field public static final yB:Ljava/lang/String;

.field private static final yz:Ljava/lang/String;


# instance fields
.field private yC:Lcom/xiaopeng/devtools/bean/factorytest/VmapConfig;

.field private yD:Lcom/xiaopeng/devtools/view/navi/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string v0, "NAVI_UUID"

    invoke-static {v0}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/d/a;->yz:Ljava/lang/String;

    .line 37
    const-string v0, "NAVI_MAP_CONFIG"

    invoke-static {v0}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/d/a;->yA:Ljava/lang/String;

    .line 38
    const-string v0, "OLD_NAVI_MAP_VERSION"

    invoke-static {v0}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/d/a;->yB:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/d/a;->jG()V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/devtools/view/navi/a;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/d/a;->yD:Lcom/xiaopeng/devtools/view/navi/a;

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/d/a;->jG()V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/d/a;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/d/a;->jN()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/xiaopeng/devtools/presenter/d/a;->yz:Ljava/lang/String;

    return-object v0
.end method

.method private jG()V
    .locals 3

    .line 56
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sget-object v1, Lcom/xiaopeng/devtools/presenter/d/a;->yA:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/devtools/bean/factorytest/VmapConfig;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/bean/factorytest/VmapConfig;

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/d/a;->yC:Lcom/xiaopeng/devtools/bean/factorytest/VmapConfig;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/d/a;->yC:Lcom/xiaopeng/devtools/bean/factorytest/VmapConfig;

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "NaviPresenter"

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/d/a;->yC:Lcom/xiaopeng/devtools/bean/factorytest/VmapConfig;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/bean/factorytest/VmapConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method private jN()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/d/a;->yD:Lcom/xiaopeng/devtools/view/navi/a;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/d/a;->yD:Lcom/xiaopeng/devtools/view/navi/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/view/navi/a;->nI()V

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method public ck(Ljava/lang/String;)Z
    .locals 1

    .line 97
    if-eqz p1, :cond_1

    const-string v0, "^[A-Z0-9]{6}UI[A-Z0-9]{24}$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^[A-Z0-9]{6}HW[A-Z0-9]{24}$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public jH()V
    .locals 2

    .line 67
    const-string v0, "NaviPresenter"

    const-string v1, "genUuid"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const-string v0, "generate navigation activation UUID"

    const-string v1, "triggered"

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/xiaopeng/devtools/presenter/d/a$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/d/a$1;-><init>(Lcom/xiaopeng/devtools/presenter/d/a;)V

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/i;->a(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 94
    return-void
.end method

.method public jI()Ljava/lang/String;
    .locals 1

    .line 101
    sget-object v0, Lcom/xiaopeng/devtools/presenter/d/a;->yz:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jJ()Ljava/lang/String;
    .locals 5

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/d/a;->jL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x224410

    if-eq v1, v2, :cond_1

    const v2, 0x3cb2d0f4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Autonav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "Here"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 136
    sget-object v0, Lcom/xiaopeng/devtools/presenter/d/a;->yB:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 138
    const-string v0, "N/A"

    goto/16 :goto_3

    .line 116
    :pswitch_0
    const/4 v0, 0x0

    .line 118
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "NAVI_MAP_VERSION"

    invoke-static {v2}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/google/gson/stream/JsonReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    const-class v1, Lcom/xiaopeng/devtools/bean/factorytest/HereVmapInfo;

    invoke-virtual {v2, v3, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/devtools/bean/factorytest/HereVmapInfo;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    nop

    .line 127
    move-object v0, v1

    goto :goto_2

    .line 123
    :catch_0
    move-exception v1

    .line 124
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 121
    :catch_1
    move-exception v1

    .line 122
    invoke-virtual {v1}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 125
    nop

    .line 127
    :goto_2
    if-eqz v0, :cond_3

    .line 128
    const-string v1, "NaviPresenter"

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/factorytest/HereVmapInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/factorytest/HereVmapInfo;->getMapSupplier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/factorytest/HereVmapInfo;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/factorytest/HereVmapInfo;->getMapVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 132
    :cond_3
    const-string v0, "N/A"

    .line 134
    goto :goto_3

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/d/a;->yC:Lcom/xiaopeng/devtools/bean/factorytest/VmapConfig;

    if-eqz v0, :cond_4

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/d/a;->jL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/d/a;->jM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/d/a;->jK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 112
    :cond_4
    const-string v0, "N/A"

    .line 114
    nop

    .line 143
    :cond_5
    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public jK()Ljava/lang/String;
    .locals 1

    .line 147
    nop

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/d/a;->yC:Lcom/xiaopeng/devtools/bean/factorytest/VmapConfig;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/d/a;->yC:Lcom/xiaopeng/devtools/bean/factorytest/VmapConfig;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/factorytest/VmapConfig;->getVersion()I

    move-result v0

    goto :goto_0

    .line 151
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "N/A"

    :goto_1
    return-object v0
.end method

.method public jL()Ljava/lang/String;
    .locals 1

    .line 155
    nop

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/d/a;->yC:Lcom/xiaopeng/devtools/bean/factorytest/VmapConfig;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/d/a;->yC:Lcom/xiaopeng/devtools/bean/factorytest/VmapConfig;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/factorytest/VmapConfig;->getVendor()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "N/A"

    :goto_1
    return-object v0
.end method

.method public jM()Ljava/lang/String;
    .locals 1

    .line 163
    nop

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/d/a;->yC:Lcom/xiaopeng/devtools/bean/factorytest/VmapConfig;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/d/a;->yC:Lcom/xiaopeng/devtools/bean/factorytest/VmapConfig;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/factorytest/VmapConfig;->getRegion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "N/A"

    :goto_1
    return-object v0
.end method
