.class Lcom/google/android/material/datepicker/g;
.super Landroid/widget/BaseAdapter;
.source "MonthAdapter.java"


# static fields
.field static final a:I


# instance fields
.field final b:Lcom/google/android/material/datepicker/Month;

.field final c:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "*>;"
        }
    .end annotation
.end field

.field d:Lcom/google/android/material/datepicker/b;

.field final e:Lcom/google/android/material/datepicker/CalendarConstraints;

.field private f:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    invoke-static {}, Lcom/google/android/material/datepicker/l;->c()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lcom/google/android/material/datepicker/g;->a:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/Month;",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "*>;",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/material/datepicker/g;->b:Lcom/google/android/material/datepicker/Month;

    .line 58
    iput-object p2, p0, Lcom/google/android/material/datepicker/g;->c:Lcom/google/android/material/datepicker/DateSelector;

    .line 59
    iput-object p3, p0, Lcom/google/android/material/datepicker/g;->e:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 60
    invoke-interface {p2}, Lcom/google/android/material/datepicker/DateSelector;->c()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/g;->f:Ljava/util/Collection;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->d:Lcom/google/android/material/datepicker/b;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lcom/google/android/material/datepicker/b;

    invoke-direct {v0, p1}, Lcom/google/android/material/datepicker/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/g;->d:Lcom/google/android/material/datepicker/b;

    :cond_0
    return-void
.end method

.method private a(Landroid/widget/TextView;J)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->e:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->a()Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->a(J)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 175
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/datepicker/g;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object p2, p0, Lcom/google/android/material/datepicker/g;->d:Lcom/google/android/material/datepicker/b;

    iget-object p2, p2, Lcom/google/android/material/datepicker/b;->b:Lcom/google/android/material/datepicker/a;

    goto :goto_0

    .line 177
    :cond_1
    invoke-static {}, Lcom/google/android/material/datepicker/l;->b()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long p2, v0, p2

    if-nez p2, :cond_2

    .line 178
    iget-object p2, p0, Lcom/google/android/material/datepicker/g;->d:Lcom/google/android/material/datepicker/b;

    iget-object p2, p2, Lcom/google/android/material/datepicker/b;->c:Lcom/google/android/material/datepicker/a;

    goto :goto_0

    .line 180
    :cond_2
    iget-object p2, p0, Lcom/google/android/material/datepicker/g;->d:Lcom/google/android/material/datepicker/b;

    iget-object p2, p2, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/a;

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 183
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 184
    iget-object p2, p0, Lcom/google/android/material/datepicker/g;->d:Lcom/google/android/material/datepicker/b;

    iget-object p2, p2, Lcom/google/android/material/datepicker/b;->g:Lcom/google/android/material/datepicker/a;

    .line 186
    :goto_0
    invoke-virtual {p2, p1}, Lcom/google/android/material/datepicker/a;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method private a(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V
    .locals 2

    .line 157
    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/Month;->a(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/Month;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/material/datepicker/Month;->b(J)I

    move-result v0

    .line 163
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/g;->c(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 162
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/g;->a(Landroid/widget/TextView;J)V

    :cond_0
    return-void
.end method

.method private a(J)Z
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->c:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 191
    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/l;->a(J)J

    move-result-wide v3

    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/l;->a(J)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method a()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->b()I

    move-result v0

    return v0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 5

    .line 106
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/g;->a(Landroid/content/Context;)V

    .line 107
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 109
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 110
    sget v0, Laiv$h;->mtrl_calendar_day:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/g;->a()I

    move-result p2

    sub-int p2, p1, p2

    if-ltz p2, :cond_3

    .line 113
    iget-object p3, p0, Lcom/google/android/material/datepicker/g;->b:Lcom/google/android/material/datepicker/Month;

    iget p3, p3, Lcom/google/android/material/datepicker/Month;->d:I

    if-lt p2, p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x1

    add-int/2addr p2, p3

    .line 119
    iget-object v2, p0, Lcom/google/android/material/datepicker/g;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 121
    new-array v3, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v2, p0, Lcom/google/android/material/datepicker/g;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v2, p2}, Lcom/google/android/material/datepicker/Month;->a(I)J

    move-result-wide v2

    .line 123
    iget-object p2, p0, Lcom/google/android/material/datepicker/g;->b:Lcom/google/android/material/datepicker/Month;

    iget p2, p2, Lcom/google/android/material/datepicker/Month;->b:I

    invoke-static {}, Lcom/google/android/material/datepicker/Month;->a()Lcom/google/android/material/datepicker/Month;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/datepicker/Month;->b:I

    if-ne p2, v4, :cond_2

    .line 124
    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/d;->c(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 126
    :cond_2
    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/d;->d(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 128
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    const/16 p2, 0x8

    .line 114
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 132
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/g;->a(I)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v0

    .line 136
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/material/datepicker/g;->a(Landroid/widget/TextView;J)V

    return-object v0
.end method

.method public a(I)Ljava/lang/Long;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->b()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/g;->b()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/g;->b(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/Month;->a(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->f:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 143
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/datepicker/g;->a(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->c:Lcom/google/android/material/datepicker/DateSelector;

    if-eqz v0, :cond_2

    .line 148
    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 149
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/datepicker/g;->a(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V

    goto :goto_1

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/datepicker/g;->c:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {p1}, Lcom/google/android/material/datepicker/DateSelector;->c()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/g;->f:Ljava/util/Collection;

    :cond_2
    return-void
.end method

.method b()I
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->b:Lcom/google/android/material/datepicker/Month;

    iget v1, v1, Lcom/google/android/material/datepicker/Month;->d:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method b(I)I
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->b()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method c(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x1

    .line 240
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/g;->a()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method d(I)Z
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/g;->a()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/g;->b()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method e(I)Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->b:Lcom/google/android/material/datepicker/Month;

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->c:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method f(I)Z
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 261
    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->b:Lcom/google/android/material/datepicker/Month;

    iget v1, v1, Lcom/google/android/material/datepicker/Month;->c:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCount()I
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->b:Lcom/google/android/material/datepicker/Month;

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->d:I

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/g;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/g;->a(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->b:Lcom/google/android/material/datepicker/Month;

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->c:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/g;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
