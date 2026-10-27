.class public Lcom/xiaopeng/musicradio/program/c;
.super Ljava/lang/Object;
.source "RdLanscapeConstant.java"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    sget v0, Lcom/xiaopeng/musicradio/program/b$e;->banner_change_indicator_x_pos:I

    invoke-static {v0}, Lbxo;->b(I)I

    move-result v0

    sput v0, Lcom/xiaopeng/musicradio/program/c;->a:I

    .line 13
    sget v0, Lcom/xiaopeng/musicradio/program/b$e;->banner_change_indicator_y_pos:I

    invoke-static {v0}, Lbxo;->b(I)I

    move-result v0

    sput v0, Lcom/xiaopeng/musicradio/program/c;->b:I

    .line 14
    sget v0, Lcom/xiaopeng/musicradio/program/b$e;->banner_change_indicator_x_full:I

    invoke-static {v0}, Lbxo;->b(I)I

    move-result v0

    sput v0, Lcom/xiaopeng/musicradio/program/c;->c:I

    .line 15
    sget v0, Lcom/xiaopeng/musicradio/program/b$e;->banner_change_indicator_x_pos_1_3:I

    invoke-static {v0}, Lbxo;->b(I)I

    move-result v0

    sput v0, Lcom/xiaopeng/musicradio/program/c;->d:I

    .line 16
    sget v0, Lcom/xiaopeng/musicradio/program/b$e;->banner_change_indicator_y_pos_1_3:I

    invoke-static {v0}, Lbxo;->b(I)I

    move-result v0

    sput v0, Lcom/xiaopeng/musicradio/program/c;->e:I

    .line 18
    sget v0, Lcom/xiaopeng/musicradio/program/b$e;->banner_change_indicator_x_pos_8:I

    invoke-static {v0}, Lbxo;->b(I)I

    move-result v0

    sput v0, Lcom/xiaopeng/musicradio/program/c;->f:I

    .line 19
    sget v0, Lcom/xiaopeng/musicradio/program/b$e;->banner_change_indicator_y_pos_8:I

    invoke-static {v0}, Lbxo;->b(I)I

    move-result v0

    sput v0, Lcom/xiaopeng/musicradio/program/c;->g:I

    return-void
.end method
