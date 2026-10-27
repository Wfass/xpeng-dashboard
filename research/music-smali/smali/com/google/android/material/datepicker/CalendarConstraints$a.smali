.class public final Lcom/google/android/material/datepicker/CalendarConstraints$a;
.super Ljava/lang/Object;
.source "CalendarConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/CalendarConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final a:J

.field static final b:J


# instance fields
.field private c:J

.field private d:J

.field private e:Ljava/lang/Long;

.field private f:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x76c

    const/4 v1, 0x0

    .line 204
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/Month;->a(II)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->e:J

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/l;->a(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->a:J

    const/16 v0, 0x834

    const/16 v1, 0xb

    .line 210
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/Month;->a(II)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->e:J

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/l;->a(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->a:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->c:J

    .line 215
    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->b:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->d:J

    const-wide/high16 v0, -0x8000000000000000L

    .line 217
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateValidatorPointForward;->b(J)Lcom/google/android/material/datepicker/DateValidatorPointForward;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->f:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/datepicker/CalendarConstraints;)V
    .locals 2

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->a:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->c:J

    .line 215
    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->b:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->d:J

    const-wide/high16 v0, -0x8000000000000000L

    .line 217
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateValidatorPointForward;->b(J)Lcom/google/android/material/datepicker/DateValidatorPointForward;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->f:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 222
    invoke-static {p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->a(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->e:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->c:J

    .line 223
    invoke-static {p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->b(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->e:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->d:J

    .line 224
    invoke-static {p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->c(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->e:Ljava/lang/Long;

    .line 225
    invoke-static {p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->d(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->f:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    return-void
.end method


# virtual methods
.method public a(J)Lcom/google/android/material/datepicker/CalendarConstraints$a;
    .locals 0

    .line 305
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public a()Lcom/google/android/material/datepicker/CalendarConstraints;
    .locals 9

    .line 322
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 323
    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->f:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    const-string v2, "DEEP_COPY_VALIDATOR_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 324
    new-instance v1, Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-wide v3, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->c:J

    .line 325
    invoke-static {v3, v4}, Lcom/google/android/material/datepicker/Month;->a(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->d:J

    .line 326
    invoke-static {v5, v6}, Lcom/google/android/material/datepicker/Month;->a(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v5

    .line 327
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->e:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/Month;->a(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    :goto_0
    move-object v7, v0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/datepicker/CalendarConstraints;-><init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$1;)V

    return-object v1
.end method
