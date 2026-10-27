.class public Lcom/xiaopeng/devtools/model/c/b;
.super Ljava/lang/Object;
.source "FactoryCodeModel.java"


# instance fields
.field private sd:Ljava/lang/String;

.field private se:Ljava/lang/String;

.field private sf:Z

.field private sg:Z

.field private sh:Z

.field private si:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/b;->sf:Z

    .line 27
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/devtools/model/c/b;->sg:Z

    .line 30
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/b;->sh:Z

    .line 33
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/b;->si:Z

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/b;->sd:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/xiaopeng/devtools/model/c/b;->se:Ljava/lang/String;

    .line 38
    iput-boolean p3, p0, Lcom/xiaopeng/devtools/model/c/b;->sf:Z

    .line 39
    iput-boolean p4, p0, Lcom/xiaopeng/devtools/model/c/b;->sg:Z

    .line 40
    iput-boolean p5, p0, Lcom/xiaopeng/devtools/model/c/b;->sh:Z

    .line 41
    iput-boolean p6, p0, Lcom/xiaopeng/devtools/model/c/b;->si:Z

    .line 42
    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Lcom/xiaopeng/devtools/model/c/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/devtools/model/c/a;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaopeng/devtools/model/c/b;"
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 100
    const-string p0, "FactoryCodeModel"

    const-string p1, " codes is null ."

    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    return-object v0

    .line 104
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/devtools/model/c/b;->bq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/devtools/model/c/a;

    .line 106
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/model/c/a;->fA()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/c/a;->bp(Ljava/lang/String;)Lcom/xiaopeng/devtools/model/c/b;

    move-result-object p0

    .line 112
    if-nez p0, :cond_2

    .line 114
    const-string v0, "FactoryCodeModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cannot find this factory code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    :cond_2
    return-object p0

    .line 108
    :cond_3
    :goto_0
    const-string p0, "FactoryCodeModel"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cannot find this factory code type:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    return-object v0
.end method

.method public static bq(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 127
    if-eqz p0, :cond_6

    .line 130
    invoke-static {p0}, Lcom/xiaopeng/devtools/model/c/c;->bu(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const-string p0, ""

    return-object p0

    .line 133
    :cond_0
    const-string v0, "*#1224#*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "*#1225#*"

    .line 134
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "*#0101#*"

    .line 135
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 138
    :cond_1
    const-string v0, "*#8#*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "*#400#*"

    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 142
    :cond_2
    const-string v0, "*"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 143
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 144
    const-string p0, ""

    return-object p0

    .line 146
    :cond_3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 140
    :cond_4
    :goto_0
    sget-object p0, Lcom/xiaopeng/devtools/model/c/a;->rX:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object p0, p0, v0

    return-object p0

    .line 136
    :cond_5
    :goto_1
    const-string p0, "9444"

    return-object p0

    .line 128
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static br(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 158
    if-eqz p0, :cond_0

    .line 161
    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 162
    const/4 v0, 0x0

    .line 164
    :try_start_0
    sget-object v1, Lcom/xiaopeng/devtools/model/c/a;->rX:[Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, v1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_0

    .line 165
    :catch_0
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    move-object p0, v0

    :goto_0
    return-object p0

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static bs(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 179
    if-eqz p0, :cond_0

    .line 182
    const/4 v0, 0x2

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 183
    const/4 v0, 0x0

    .line 185
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 186
    and-int/lit8 p0, p0, 0x7

    .line 187
    sget-object v1, Lcom/xiaopeng/devtools/model/c/a;->rX:[Ljava/lang/String;

    aget-object p0, v1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    goto :goto_0

    .line 188
    :catch_0
    move-exception p0

    .line 189
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    move-object p0, v0

    :goto_0
    return-object p0

    .line 180
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static bt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 202
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 203
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 204
    const-string p0, ""

    return-object p0

    .line 206
    :cond_0
    const/16 v2, 0x2a

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 207
    if-ne v2, v1, :cond_1

    .line 208
    const-string p0, ""

    return-object p0

    .line 210
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public fE()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/b;->sd:Ljava/lang/String;

    return-object v0
.end method

.method public fF()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/b;->sg:Z

    return v0
.end method

.method public fG()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/b;->sh:Z

    return v0
.end method

.method public fH()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/b;->si:Z

    return v0
.end method
