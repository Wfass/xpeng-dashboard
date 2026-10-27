.class Lcom/xiaopeng/xui/b/b;
.super Ljava/lang/Object;
.source "SoundEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/b/b$a;
    }
.end annotation


# static fields
.field private static abd:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/xui/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private static abe:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/xui/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/b/b;->abd:Landroid/util/SparseArray;

    .line 35
    sget-object v0, Lcom/xiaopeng/xui/b/b;->abd:Landroid/util/SparseArray;

    new-instance v1, Lcom/xiaopeng/xui/b/b$a;

    const-string v2, "CDU_touch.wav"

    invoke-direct {v1, v2}, Lcom/xiaopeng/xui/b/b$a;-><init>(Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    sget-object v0, Lcom/xiaopeng/xui/b/b;->abd:Landroid/util/SparseArray;

    new-instance v1, Lcom/xiaopeng/xui/b/b$a;

    const-string v2, "CDU_touch.wav"

    invoke-direct {v1, v2}, Lcom/xiaopeng/xui/b/b$a;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/xiaopeng/xui/b/b;->abd:Landroid/util/SparseArray;

    new-instance v1, Lcom/xiaopeng/xui/b/b$a;

    const-string v2, "CDU_wheel_scroll_7.wav"

    invoke-direct {v1, v2}, Lcom/xiaopeng/xui/b/b$a;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/xiaopeng/xui/b/b;->abd:Landroid/util/SparseArray;

    new-instance v1, Lcom/xiaopeng/xui/b/b$a;

    const-string v2, "CDU_switch_on_2.wav"

    invoke-direct {v1, v2}, Lcom/xiaopeng/xui/b/b$a;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    sget-object v0, Lcom/xiaopeng/xui/b/b;->abd:Landroid/util/SparseArray;

    new-instance v1, Lcom/xiaopeng/xui/b/b$a;

    const-string v2, "CDU_switch_off_2.wav"

    invoke-direct {v1, v2}, Lcom/xiaopeng/xui/b/b$a;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/xiaopeng/xui/b/b;->abd:Landroid/util/SparseArray;

    new-instance v1, Lcom/xiaopeng/xui/b/b$a;

    const-string v2, "CDU_delete_4.wav"

    invoke-direct {v1, v2}, Lcom/xiaopeng/xui/b/b$a;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/xiaopeng/xui/b/b;->abd:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/b/b;->abe:Landroid/util/SparseArray;

    .line 43
    return-void
.end method

.method static et(I)Lcom/xiaopeng/xui/b/e;
    .locals 2

    .line 52
    new-instance v0, Lcom/xiaopeng/xui/b/c;

    sget-object v1, Lcom/xiaopeng/xui/b/b;->abd:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/xui/b/d;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/b/c;-><init>(Lcom/xiaopeng/xui/b/d;)V

    return-object v0
.end method
