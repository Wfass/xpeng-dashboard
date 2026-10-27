.class public Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;
.super Lcom/xiaopeng/devtools/presenter/oled/a;
.source "CANMsg387.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public yF:I

.field public yG:I

.field public yH:I

.field public yI:I

.field public yJ:I

.field public yK:I

.field public yL:I

.field public yM:I

.field public yN:I

.field public yO:I

.field public yP:I

.field public yQ:I

.field public yR:I

.field public yS:I

.field public yT:I

.field public yU:I

.field public yV:I

.field public yW:I

.field public yX:I

.field public yY:I

.field public yZ:I

.field public za:I

.field public zb:I

.field public zc:I

.field public zd:I

.field public ze:I

.field public zf:I

.field public zg:I

.field public zh:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 141
    new-instance v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387$1;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/oled/a;-><init>()V

    .line 39
    const/16 v0, 0x1c

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->id:I

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yF:I

    .line 41
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yG:I

    .line 42
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yH:I

    .line 43
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yI:I

    .line 44
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yJ:I

    .line 45
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yK:I

    .line 46
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yL:I

    .line 47
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yM:I

    .line 48
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yN:I

    .line 49
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yO:I

    .line 50
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yP:I

    .line 51
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yQ:I

    .line 52
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yR:I

    .line 53
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yS:I

    .line 54
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yT:I

    .line 55
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yU:I

    .line 56
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yV:I

    .line 57
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yW:I

    .line 58
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yX:I

    .line 59
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yY:I

    .line 60
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yZ:I

    .line 61
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->za:I

    .line 62
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zb:I

    .line 63
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zc:I

    .line 64
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zd:I

    .line 65
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->ze:I

    .line 66
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zf:I

    .line 67
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zg:I

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zh:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/oled/a;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->id:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yF:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yG:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yH:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yI:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yJ:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yK:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yL:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yM:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yN:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yO:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yP:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yQ:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yR:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yS:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yT:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yU:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yV:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yW:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yX:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yY:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yZ:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->za:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zb:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zc:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zd:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->ze:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zf:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zg:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zh:I

    .line 102
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 162
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yF:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yG:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yH:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yI:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yJ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yK:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yL:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yM:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yN:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yO:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yP:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yQ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yR:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yS:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yT:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yU:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yV:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yW:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yZ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->za:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zb:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->ze:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zf:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zg:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget p2, p0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zh:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    return-void
.end method
