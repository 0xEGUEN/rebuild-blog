import { format, parseISO } from 'date-fns';

export function formatDate(date: Date | string): string {
  if (typeof date === 'string') {
    date = parseISO(date);
  }
  return format(date, 'MMMM d, yyyy');
}

export function formatDateFull(date: Date | string): string {
  if (typeof date === 'string') {
    date = parseISO(date);
  }
  return format(date, 'EEEE, MMMM d, yyyy');
}

export function formatMonth(date: Date | string): string {
  if (typeof date === 'string') {
    date = parseISO(date);
  }
  return format(date, 'MMMM yyyy');
}

export function getYear(date: Date | string): number {
  if (typeof date === 'string') {
    date = parseISO(date);
  }
  return date.getFullYear();
}

export function getDaysSince(date: Date | string): number {
  if (typeof date === 'string') {
    date = parseISO(date);
  }
  const now = new Date();
  const diff = now.getTime() - date.getTime();
  return Math.floor(diff / (1000 * 60 * 60 * 24));
}
