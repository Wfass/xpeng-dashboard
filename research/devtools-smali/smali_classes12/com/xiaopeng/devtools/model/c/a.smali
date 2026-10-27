.class public Lcom/xiaopeng/devtools/model/c/a;
.super Ljava/lang/Object;
.source "FactoryCodeGroupModel.java"


# static fields
.field public static final rX:[Ljava/lang/String;


# instance fields
.field private rY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/model/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private rZ:Ljava/lang/String;

.field private sa:Ljava/lang/String;

.field private sb:I

.field private sc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 18
    const-string v0, "9925"

    const-string v1, "9723"

    const-string v2, "4227"

    const-string v3, "9387"

    const-string v4, "7494"

    const-string v5, "9444"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/model/c/a;->rX:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    .line 90
    return-void
.end method

.method public static fD()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/devtools/model/c/a;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 155
    new-instance v1, Lcom/xiaopeng/devtools/model/c/a;

    invoke-direct {v1}, Lcom/xiaopeng/devtools/model/c/a;-><init>()V

    .line 156
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#4227*111#*"

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#4227*2#*"

    const-string v5, ""

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v2, Lcom/xiaopeng/devtools/model/c/a;->rX:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->sa:Ljava/lang/String;

    .line 160
    const-string v2, ""

    iput-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rZ:Ljava/lang/String;

    .line 161
    iput v3, v1, Lcom/xiaopeng/devtools/model/c/a;->sb:I

    .line 162
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->sa:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v1, Lcom/xiaopeng/devtools/model/c/a;

    invoke-direct {v1}, Lcom/xiaopeng/devtools/model/c/a;-><init>()V

    .line 166
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*111#*"

    const-string v5, ""

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*121#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*122#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*123#*"

    const-string v5, ""

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*131#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*132#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*133#*"

    const-string v5, ""

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*134#*"

    const-string v5, ""

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*135#*"

    const-string v5, ""

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*141#*"

    const-string v5, ""

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*142#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*143#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*151#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*161#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*171#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*211#*"

    const-string v5, ""

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*212#*"

    const-string v5, ""

    const/4 v7, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*213#*"

    const-string v5, ""

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*214#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*215#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*2#*"

    const-string v5, ""

    const/4 v8, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*315#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*321#*"

    const-string v5, ""

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*311#*"

    const-string v5, ""

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*312#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*313#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*314#*"

    const-string v5, ""

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*411#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9387*511#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v2, Lcom/xiaopeng/devtools/model/c/a;->rX:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->sa:Ljava/lang/String;

    .line 198
    const-string v2, ""

    iput-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rZ:Ljava/lang/String;

    .line 199
    iput v3, v1, Lcom/xiaopeng/devtools/model/c/a;->sb:I

    .line 200
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->sa:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v1, Lcom/xiaopeng/devtools/model/c/a;

    invoke-direct {v1}, Lcom/xiaopeng/devtools/model/c/a;-><init>()V

    .line 204
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9925*111#*"

    const-string v5, ""

    const/4 v8, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9925*121#*"

    const-string v5, ""

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9925*131#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9925*211#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v2, Lcom/xiaopeng/devtools/model/c/a;->rX:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->sa:Ljava/lang/String;

    .line 210
    const-string v2, ""

    iput-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rZ:Ljava/lang/String;

    .line 211
    iput v3, v1, Lcom/xiaopeng/devtools/model/c/a;->sb:I

    .line 212
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->sa:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v1, Lcom/xiaopeng/devtools/model/c/a;

    invoke-direct {v1}, Lcom/xiaopeng/devtools/model/c/a;-><init>()V

    .line 216
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9723*111#*"

    const-string v5, ""

    const/4 v8, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9723*121#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9723*122#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9723*131#*"

    const-string v5, ""

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#9723*211#*"

    const-string v5, ""

    const/4 v8, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v2, Lcom/xiaopeng/devtools/model/c/a;->rX:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->sa:Ljava/lang/String;

    .line 223
    const-string v2, ""

    iput-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rZ:Ljava/lang/String;

    .line 224
    iput v3, v1, Lcom/xiaopeng/devtools/model/c/a;->sb:I

    .line 225
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->sa:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v1, Lcom/xiaopeng/devtools/model/c/a;

    invoke-direct {v1}, Lcom/xiaopeng/devtools/model/c/a;-><init>()V

    .line 229
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#7494*111#*"

    const-string v5, ""

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#7494*121#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#8#*"

    const-string v5, ""

    const/4 v8, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#400#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v2, Lcom/xiaopeng/devtools/model/c/a;->rX:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->sa:Ljava/lang/String;

    .line 235
    const-string v2, ""

    iput-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rZ:Ljava/lang/String;

    .line 236
    iput v3, v1, Lcom/xiaopeng/devtools/model/c/a;->sb:I

    .line 237
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->sa:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v1, Lcom/xiaopeng/devtools/model/c/a;

    invoke-direct {v1}, Lcom/xiaopeng/devtools/model/c/a;-><init>()V

    .line 242
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#1224#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#1225#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    new-instance v10, Lcom/xiaopeng/devtools/model/c/b;

    const-string v4, "*#0101#*"

    const-string v5, ""

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/model/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v2, Lcom/xiaopeng/devtools/model/c/a;->rX:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->sa:Ljava/lang/String;

    .line 247
    const-string v2, ""

    iput-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->rZ:Ljava/lang/String;

    .line 248
    iput v3, v1, Lcom/xiaopeng/devtools/model/c/a;->sb:I

    .line 249
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a;->sa:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-object v0
.end method


# virtual methods
.method public E(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/model/c/a;->sc:Z

    .line 122
    return-void
.end method

.method public bp(Ljava/lang/String;)Lcom/xiaopeng/devtools/model/c/b;
    .locals 3

    .line 135
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/devtools/model/c/b;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/model/c/b;->fE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/model/c/b;

    return-object p1

    .line 138
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_2
    return-object v0

    .line 136
    :cond_3
    :goto_1
    return-object v0
.end method

.method public fA()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/model/c/b;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a;->rY:Ljava/util/List;

    return-object v0
.end method

.method public fB()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/a;->sc:Z

    return v0
.end method

.method public fC()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/xiaopeng/devtools/model/c/a;->sb:I

    return v0
.end method
